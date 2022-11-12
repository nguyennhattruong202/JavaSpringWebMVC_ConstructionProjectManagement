/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dan.config;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.dan.handler.LoginHandler;
import com.dan.handler.LogoutHandler;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@Configuration
@EnableTransactionManagement
@EnableWebSecurity
@ComponentScan(basePackages = {
    "com.dan.controller",
    "com.dan.repository",
    "com.dan.service",
    "com.dan.handler",})
@PropertySource("classpath:cloudinary.properties")
public class SpringSecurityConfig extends WebSecurityConfigurerAdapter {

    @Autowired
    private Environment env;
    @Autowired
    private LoginHandler loginHandler;
    @Autowired
    private LogoutHandler logoutHanlder;
    @Autowired
    private UserDetailsService userDetailsService;

    @Bean
    public BCryptPasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Bean
    public Cloudinary cloudinary() {
        Cloudinary cloudinary = new Cloudinary(ObjectUtils.asMap(
                "cloud_name", env.getProperty("cloudinary.cloud_name"),
                "api_key", env.getProperty("cloudinary.api_key"),
                "api_secret", env.getProperty("cloudinary.api_secret"),
                "secure", env.getProperty("cloudinary.secure")));
        return cloudinary;
    }

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(userDetailsService).passwordEncoder(passwordEncoder());
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.formLogin().loginPage("/login").usernameParameter("username").passwordParameter("password");
        http.formLogin().successHandler(loginHandler);
        http.logout().logoutSuccessHandler(logoutHanlder);
        http.authorizeRequests().antMatchers("/", "/login", "/user").permitAll()
                .antMatchers("/admin/**")
                .access("hasRole('ROLE_ADMIN')");
        http.csrf().disable();
    }
}
