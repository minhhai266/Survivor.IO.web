<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="jakarta.tags.core" %>
        <!DOCTYPE html>
        <html lang="vi">

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Survivor.io - Zombie Survival Game</title>
            <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
        </head>

        <body class="dark">
            <!-- Navigation -->
            <nav class="navbar">
                <div class="container nav-container">
                    <div class="nav-logo">
                        <div class="logo-icon">S.IO</div>
                        <span class="logo-text">SURVIVOR.IO</span>
                    </div>

                    <div class="nav-links" id="navLinks">
                        <a href="${pageContext.request.contextPath}/#features" class="nav-link"
                            data-translate="nav-features">Tính Năng</a>
                        <a href="${pageContext.request.contextPath}/characters" class="nav-link"
                            data-translate="nav-characters">Nhân Vật</a>
                        <a href="${pageContext.request.contextPath}/weapons" class="nav-link"
                            data-translate="nav-weapons">Vũ Khí</a>
                        <a href="${pageContext.request.contextPath}/#enemies" class="nav-link"
                            data-translate="nav-enemies">Quái Vật</a>
                        <a href="${pageContext.request.contextPath}/events" class="nav-link"
                            data-translate="nav-events">Sự Kiện</a>

                        <!-- Theme Toggle -->
                        <button class="icon-btn" id="themeToggle" title="Toggle Theme">
                            <span class="theme-icon">🌞</span>
                        </button>

                        <!-- Language Toggle -->
                        <button class="icon-btn lang-btn" id="langToggle">
                            <span class="lang-icon">🌐</span>
                            <span id="langText">VI</span>
                        </button>

                        <button class="btn-primary" data-translate="nav-play">Chơi Ngay</button>
                    </div>

                    <button class="mobile-menu-btn" id="mobileMenuBtn">
                        <span class="hamburger"></span>
                    </button>
                </div>
            </nav>

            <script>
                const translations = {
                    en: {
                        home: "Home",
                        characters: "Characters",
                        weapons: "Weapons",
                        events: "Events"
                    },
                    vi: {
                        home: "Trang chủ",
                        characters: "Nhân vật",
                        weapons: "Vũ khí",
                        events: "Sự kiện"
                    }
                };

                let currentLang = "en";

                const langToggle = document.getElementById("langToggle");
                const langText = document.getElementById("langText");

                langToggle.addEventListener("click", () => {

                    currentLang = currentLang === "en" ? "vi" : "en";

                    langText.textContent = currentLang.toUpperCase();

                    document.querySelectorAll("[data-translate]").forEach(el => {

                        const key = el.getAttribute("data-translate");

                        el.textContent = translations[currentLang][key];
                    });
                });
                const themeToggle = document.getElementById("themeToggle");
                const themeIcon = document.querySelector(".theme-icon");

                function updateTheme() {

                    const isDark = document.body.classList.contains("dark");

                    themeIcon.textContent = isDark ? "🌙" : "🌞";

                    localStorage.setItem("theme", isDark ? "dark" : "light");
                }

                // Load saved theme
                if (localStorage.getItem("theme") === "dark") {
                    document.body.classList.add("dark");
                }

                updateTheme();

                // Toggle theme
                themeToggle.addEventListener("click", () => {

                    document.body.classList.toggle("dark");

                    updateTheme();
                });
            </script>