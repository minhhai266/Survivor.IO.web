<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<jsp:include page="header.jsp" />

<section class="page-header">
    <div class="container">
        <h1 class="page-title gradient-text" data-translate="event-now">Sự Kiện Trực Tiếp</h1>
        <p class="page-subtitle" data-translate="event-subtitle">Tham gia sự kiện giới hạn thời gian và nhận phần thưởng độc quyền</p>
    </div>
</section>

<section class="section">
    <div class="container">
        <!-- Events Grid -->
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
                        <h3 class="event-title" data-translate="event-title">${event.title}</h3>
                        <p class="event-description" data-translate="event-description">${event.description}</p>
                        <div class="event-rewards">
                            <span class="rewards-label" data-translate="event-rewards">🎁 Phần thưởng:</span>
                            <p class="rewards-text" data-translate="event-rewards-text">${event.rewards}</p>
                        </div>
                        <div class="event-dates">
                            <div class="date-item">
                                <span class="date-label" data-translate="event-start-date">Bắt đầu:</span>
                                <span class="date-value" data-translate="event-start-date-value">${event.startDate}</span>
                            </div>
                            <div class="date-item">
                                <span class="date-label" data-translate="event-end-date">Kết thúc:</span>
                                <span class="date-value" data-translate="event-end-date-value">${event.endDate}</span>
                            </div>
                        </div>
                        <button class="btn-primary btn-block" data-translate="event-join-btn">🏆 Tham Gia Sự Kiện</button>
                    </div>
                </div>
            </c:forEach>
        </div>

        <c:if test="${empty events}">
            <div class="empty-state">
                <p data-translate="events-empty">Hiện tại không có sự kiện nào đang diễn ra.</p>
                <p data-translate="event-comeback">Hãy quay lại sau!</p>
            </div>
        </c:if>

        <!-- Battle Pass Section -->
        <div class="battle-pass-card">
            <div class="battle-pass-header">
                <div>
                    <h3 class="battle-pass-title" data-translate="event-battle-pass-title">Vé Chiến Đấu Mùa 5</h3>
                    <p class="battle-pass-subtitle" data-translate="event-battle-pass-subtitle">Mở khóa hơn 100 phần thưởng độc quyền</p>
                </div>
                <div class="battle-pass-timer">
                    <div class="timer-label" data-translate="event-battle-pass-timer">Mùa Kết Thúc Sau</div>
                    <div class="timer-value">
                        <span class="timer-icon">📅</span>
                        <span data-translate="event-battle-pass-timer-value"></span>15 Days</span>
                    </div>
                </div>
            </div>

            <div class="battle-pass-progress">
                <div class="progress-info">
                    <span class="progress-label">Level 45 / 100</span>
                    <span class="progress-percent" data-translate="event-battle-pass-progress">45% Hoàn Thành</span>
                </div>
                <div class="progress-bar">
                    <div class="progress-fill" style="width: 45%"></div>
                </div>
            </div>

            <div class="battle-pass-rewards">
                <div class="reward-item">
                    <div class="reward-icon">🎨</div>
                    <div class="reward-name">Legendary Skin</div>
                </div>
                <div class="reward-item">
                    <div class="reward-icon">⚔️</div>
                    <div class="reward-name">Epic Weapon</div>
                </div>
                <div class="reward-item">
                    <div class="reward-icon">💎</div>
                    <div class="reward-name">10000 Gems</div>
                </div>
                <div class="reward-item">
                    <div class="reward-icon">🐉</div>
                    <div class="reward-name">Mythic Pet</div>
                </div>
            </div>

            <button class="btn-primary btn-block btn-lg" data-translate="event-battle-pass-unlock">
                Mở Khóa Vé Chiến Đấu Cao Cấp
            </button>
        </div>
    </div>
</section>

<jsp:include page="footer.jsp" />
