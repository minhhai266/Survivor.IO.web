<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
    <script src="${pageContext.request.contextPath}/js/translations.js"></script>
    <script src="${pageContext.request.contextPath}/js/script.js"></script>
</body>
</html>
