<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="jakarta.tags.core" %>
        <jsp:include page="header.jsp" />

        <!-- Hero Section with Carousel -->
        <section class="hero-section" id="hero">
            <div class="hero-slider" id="heroSlider">
                <div class="hero-slide active" style="background-image: url('/image/img1.png')">
                    <div class="slide-overlay"></div>
                </div>

                <div class="hero-slide" style="background-image: url('/image/img2.png')">
                    <div class="slide-overlay"></div>
                </div>

                <div class="hero-slide" style="background-image: url('/image/img3.png')">
                    <div class="slide-overlay"></div>
                </div>
            </div>

            <button class="slider-arrow slider-prev" id="sliderPrev">❮</button>
            <button class="slider-arrow slider-next" id="sliderNext">❯</button>

            <div class="hero-content">
                <div class="container">
                    <h1 class="hero-title">
                        <span class="hero-title-1" data-translate="hero-title1">SỐNG SÓT QUA</span>
                        <span class="hero-title-2" data-translate="hero-title2">TẬN THẾ</span>
                    </h1>
                    <p class="hero-subtitle" data-translate="hero-subtitle">
                        Chiến đấu với hàng ngàn zombies. Làm chủ kỹ năng roguelike.
                        Sống sót qua những đợt tấn công vô tận.
                    </p>

                    <div class="hero-buttons">
                        <button class="btn-primary btn-lg">
                            <span data-translate="hero-play">▶ Chơi Ngay</span>
                        </button>
                        <button class="btn-secondary btn-lg">
                            <span data-translate="hero-download">⬇ Tải Game</span>
                        </button>
                        <button class="btn-outline btn-lg">
                            <span data-translate="hero-trailer">▶ Xem Trailer</span>
                        </button>
                    </div>

                    <div class="hero-stats">
                        <div class="stat-card">
                            <div class="stat-number">1000+</div>
                            <div class="stat-label" data-translate="hero-zombies">Zombies</div>
                        </div>
                        <div class="stat-card">
                            <div class="stat-number">50+</div>
                            <div class="stat-label" data-translate="hero-skills">Kỹ Năng</div>
                        </div>
                        <div class="stat-card">
                            <div class="stat-number">20+</div>
                            <div class="stat-label" data-translate="hero-heroes">Anh Hùng</div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="scroll-indicator">
                <div class="scroll-mouse">
                    <div class="scroll-wheel"></div>
                </div>
            </div>
        </section>

        <!-- Features Section -->
        <section class="section" id="features">
            <div class="container">
                <div class="section-header">
                    <h2 class="section-title gradient-text" data-translate="features-title">Tính Năng Game</h2>
                    <p class="section-subtitle" data-translate="features-subtitle">
                        Trải nghiệm game sinh tồn zombie tối thượng với cơ chế gameplay tiên tiến
                    </p>
                </div>

                <div class="features-grid">
                    <div class="feature-card">
                        <div class="feature-icon">⚡</div>
                        <h3 class="feature-title" data-translate="features-zombie-title">Chiến Đấu 1000+ Zombies</h3>
                        <p class="feature-description" data-translate="features-zombie-description">
                            Đối mặt với đám đông zombie khổng lồ
                        </p>
                    </div>
                    <div class="feature-card">
                        <div class="feature-icon">🎯</div>
                        <h3 class="feature-title" data-translate="features-skill-title">Kỹ Năng Roguelike</h3>
                        <p class="feature-description" data-translate="features-skill-description">Kết hợp các kỹ năng mạnh mẽ</p>
                    </div>
                    <div class="feature-card">
                        <div class="feature-icon">♾️</div>
                        <h3 class="feature-title" data-translate="features-survival-title">Sinh Tồn Vô Tận</h3>
                        <p class="feature-description" data-translate="features-survival-description">Thách thức giới hạn của bạn</p>
                    </div>
                    <div class="feature-card">
                        <div class="feature-icon">💀</div>
                        <h3 class="feature-title" data-translate="features-boss-title">Trận Đánh Boss</h3>
                        <p class="feature-description" data-translate="features-boss-description">Đánh bại boss khổng lồ</p>
                    </div>
                    <div class="feature-card">
                        <div class="feature-icon">👥</div>
                        <h3 class="feature-title" data-translate="features-event-title">Sự Kiện Nhiều Người</h3>
                        <p class="feature-description" data-translate="features-event-description">Hợp tác với người chơi toàn cầu</p>
                    </div>
                    <div class="feature-card">
                        <div class="feature-icon">🐾</div>
                        <h3 class="feature-title" data-translate="features-pet-title">Hệ Thống Pet</h3>
                        <p class="feature-description" data-translate="features-pet-description">Thu thập và tiến hóa đồng đội</p>
                    </div>
                    <div class="feature-card">
                        <div class="feature-icon">⚔️</div>
                        <h3 class="feature-title" data-translate="features-weapon-title">Tiến Hóa Vũ Khí</h3>
                        <p class="feature-description" data-translate="features-weapon-description">Nâng cấp vũ khí mạnh mẽ</p>
                    </div>
                    <div class="feature-card">
                        <div class="feature-icon">👤</div>
                        <h3 class="feature-title" data-translate="features-hero-title">Tùy Chỉnh Anh Hùng</h3>
                        <p class="feature-description" data-translate="features-hero-description">Chọn từ các anh hùng độc đáo</p>
                    </div>
                </div>
            </div>
        </section>

        <!-- Characters Section -->
        <section class="section section-dark" id="characters">
            <div class="container">
                <div class="section-header">
                    <h2 class="section-title gradient-text" data-translate="characters-title">Anh Hùng</h2>
                    <p class="section-subtitle" data-translate="characters-subtitle">
                        Chọn chiến binh của bạn và thống trị tận thế
                    </p>
                </div>

                <div class="characters-grid">
                    <c:forEach items="${characters}" var="character">
                        <div class="character-card">
                            <div class="character-image">
                                <img src="${character.imageUrl}" alt="${character.name}">
                                <span class="character-rarity ${character.rarityColor}">${character.rarity}</span>
                            </div>
                            <div class="character-info">
                                <h3 class="character-name">${character.name}</h3>
                                <div class="character-stats">
                                    <div class="stat-item">
                                        <span class="stat-icon">❤️</span>
                                        <span class="stat-label">HP:</span>
                                        <span class="stat-value">${character.hp}</span>
                                    </div>
                                    <div class="stat-item">
                                        <span class="stat-icon">⚡</span>
                                        <span class="stat-label">Attack:</span>
                                        <span class="stat-value">${character.attack}</span>
                                    </div>
                                    <div class="stat-item">
                                        <span class="stat-icon">⭐</span>
                                        <span class="stat-label">Crit:</span>
                                        <span class="stat-value">${character.critRate}%</span>
                                    </div>
                                </div>
                                <div class="character-skill">
                                    <span class="skill-icon">🛡️</span>
                                    <span class="skill-name">${character.skill}</span>
                                </div>
                                <button class="btn-primary btn-block" data-translate="unlock-btn">Mở Khóa</button>
                            </div>
                        </div>
                    </c:forEach>
                </div>

                <div class="text-center" style="margin-top: 2rem;">
                    <a href="${pageContext.request.contextPath}/characters" class="btn-secondary btn-lg" data-translate="view-all-characters">
                        Xem Tất Cả Nhân Vật
                    </a>
                </div>
            </div>
        </section>

        <!-- Events Section -->
        <section class="section" id="events">
            <div class="container">
                <div class="section-header">
                    <h2 class="section-title gradient-text" data-translate="events-title">Sự Kiện Trực Tiếp</h2>
                    <p class="section-subtitle" data-translate="events-subtitle">
                        Tham gia sự kiện giới hạn thời gian và nhận phần thưởng độc quyền
                    </p>
                </div>

                <div class="events-grid">
                    <c:forEach items="${events}" var="event">
                        <div class="event-card">
                            <div class="event-image" style="background-image: url('${event.imageUrl}')">
                                <span class="event-type ${event.rarityColor}">${event.type}</span>
                                <div class="event-timer">
                                    <span class="timer-icon">⏰</span>
                                    <span class="timer-text">${event.timeLeft}</span>
                                </div>
                            </div>
                            <div class="event-info">
                                <h3 class="event-title">${event.title}</h3>
                                <div class="event-rewards">
                                    <span class="rewards-label">🎁 Phần thưởng:</span>
                                    <p class="rewards-text">${event.rewards}</p>
                                </div>
                                <button class="btn-primary btn-block" data-translate="event-join-btn">🏆 Tham Gia Sự Kiện</button>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </section>

        <!-- Download Section -->
        <section class="section section-dark" id="download">
            <div class="container">
                <div class="section-header">
                    <h2 class="section-title gradient-text" data-translate="download-title">Tải Ngay</h2>
                    <p class="section-subtitle" data-translate="download-subtitle">
                        Tham gia hàng triệu người sống sót trên toàn thế giới
                    </p>
                </div>

                <div class="download-grid">
                    <div class="download-card">
                        <div class="download-icon android-icon">📱</div>
                        <h3 class="download-name">Google Play</h3>
                        <p class="download-version" data-translate="download-android-version">
                            Android 5.0 trở lên
                        </p>
                        <button class="btn-primary" data-translate="download-btn">
                            ⬇ Tải Xuống
                        </button>
                    </div>

                    <div class="download-card">
                        <div class="download-icon ios-icon">📱</div>
                        <h3 class="download-name">App Store</h3>
                        <p class="download-version" data-translate="download-ios-version">
                            iOS 12.0 trở lên
                        </p>
                        <button class="btn-primary" data-translate="download-btn">
                            ⬇ Tải Xuống
                        </button>
                    </div>

                    <div class="download-card">
                        <div class="download-icon windows-icon">💻</div>
                        <h3 class="download-name">Windows PC</h3>
                        <p class="download-version" data-translate="download-windows-version">
                            Phiên Bản Giả Lập
                        </p>
                        <button class="btn-primary" data-translate="download-btn">
                            ⬇ Tải Xuống
                        </button>
                    </div>
                </div>
            </div>
        </section>

        <jsp:include page="footer.jsp" />