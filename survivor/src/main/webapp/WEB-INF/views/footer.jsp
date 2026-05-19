<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!-- Footer -->
    <footer class="footer">
        <div class="container">
            <div class="footer-grid">
                <div class="footer-col">
                    <div class="footer-logo">
                        <div class="logo-icon">S.IO</div>
                        <span class="logo-text">SURVIVOR.IO</span>
                    </div>
                    <p class="footer-description" data-translate="footer-description">
                        Game sinh tồn zombie tối thượng. Chiến đấu, sinh tồn và chinh phục tận thế.
                    </p>
                </div>

                <div class="footer-col">
                    <h4 class="footer-title" data-translate="footer-game">Trò Chơi</h4>
                    <ul class="footer-links">
                        <li><a href="#features">Tính Năng</a></li>
                        <li><a href="${pageContext.request.contextPath}/characters">Nhân Vật</a></li>
                        <li><a href="${pageContext.request.contextPath}/weapons">Vũ Khí</a></li>
                        <li><a href="${pageContext.request.contextPath}/events">Sự Kiện</a></li>
                    </ul>
                </div>

                <div class="footer-col">
                    <h4 class="footer-title" data-translate="footer-community">Cộng Đồng</h4>
                    <ul class="footer-links">
                        <li><a href="#">Discord</a></li>
                        <li><a href="#">Diễn Đàn</a></li>
                        <li><a href="#">Wiki</a></li>
                        <li><a href="#">Fan Art</a></li>
                    </ul>
                </div>

                <div class="footer-col">
                    <h4 class="footer-title" data-translate="footer-support">Hỗ Trợ</h4>
                    <ul class="footer-links">
                        <li><a href="#">Trung Tâm Trợ Giúp</a></li>
                        <li><a href="#">Điều Khoản</a></li>
                        <li><a href="#">Bảo Mật</a></li>
                        <li><a href="#">Liên Hệ</a></li>
                    </ul>
                </div>
            </div>

            <div class="footer-bottom">
                <div class="social-links">
                    <a href="#" class="social-link">📘</a>
                    <a href="#" class="social-link">🐦</a>
                    <a href="#" class="social-link">📺</a>
                    <a href="#" class="social-link">💬</a>
                </div>

                <div class="copyright">
                    <p>&copy; 2026 Survivor.io. Đã đăng ký bản quyền.</p>
                    <p class="built-with">Xây dựng với Spring Boot & JSP</p>
                </div>
            </div>
        </div>
    </footer>

    <!-- Scripts -->
    <script>window.addEventListener("DOMContentLoaded", () => {

            // ================================
            // THEME TOGGLE
            // ================================
            const themeToggle = document.getElementById("themeToggle");
            const themeIcon = document.querySelector(".theme-icon");

            function updateTheme() {

                const isDark = document.body.classList.contains("dark");

                // Icon hiển thị chế độ sẽ chuyển tới
                themeIcon.textContent = isDark ? "🌞" : "🌙";

                localStorage.setItem("theme", isDark ? "dark" : "light");
            }

            // Load saved theme
            const savedTheme = localStorage.getItem("theme");

            if (savedTheme === "dark") {
                document.body.classList.add("dark");
            } else {
                document.body.classList.remove("dark");
            }

            updateTheme();

            // Toggle theme
            themeToggle.addEventListener("click", () => {

                document.body.classList.toggle("dark");

                updateTheme();
            });



            // ================================
            // LANGUAGE TOGGLE
            // ================================
            const translations = {

                en: {
                    "nav-features": "Features",
                    "nav-characters": "Characters",
                    "nav-weapons": "Weapons",
                    "nav-enemies": "Enemies",
                    "nav-events": "Events",
                    "nav-play": "Play Now"
                },

                vi: {
                    "nav-features": "Tính Năng",
                    "nav-characters": "Nhân Vật",
                    "nav-weapons": "Vũ Khí",
                    "nav-enemies": "Quái Vật",
                    "nav-events": "Sự Kiện",
                    "nav-play": "Chơi Ngay"
                }
            };

            const langToggle = document.getElementById("langToggle");
            const langText = document.getElementById("langText");

            let currentLang = localStorage.getItem("language") || "vi";

            function updateLanguage(lang) {

                document.querySelectorAll("[data-translate]").forEach(el => {

                    const key = el.getAttribute("data-translate");

                    if (translations[lang][key]) {
                        el.textContent = translations[lang][key];
                    }
                });

                langText.textContent = lang.toUpperCase();

                localStorage.setItem("language", lang);
            }

            // Load saved language
            updateLanguage(currentLang);

            // Toggle language
            langToggle.addEventListener("click", () => {

                currentLang = currentLang === "vi" ? "en" : "vi";

                updateLanguage(currentLang);
            });



            // ================================
            // HERO SLIDER
            // ================================
            const slides = document.querySelectorAll(".hero-slide");

            let currentSlide = 0;

            function showSlide(index) {

                slides.forEach(slide => {
                    slide.classList.remove("active");
                });

                slides[index].classList.add("active");
            }

            function nextSlide() {

                currentSlide++;

                if (currentSlide >= slides.length) {
                    currentSlide = 0;
                }

                showSlide(currentSlide);
            }

            // Hiện slide đầu
            if (slides.length > 0) {

                showSlide(currentSlide);

                // Auto slide mỗi 4 giây
                setInterval(nextSlide, 4000);
            }



            // ================================
            // MOBILE MENU
            // ================================
            const mobileMenuBtn = document.getElementById("mobileMenuBtn");
            const navLinks = document.getElementById("navLinks");

            mobileMenuBtn.addEventListener("click", () => {

                navLinks.classList.toggle("active");
            });

        });
    </script>

    </body>

    </html>