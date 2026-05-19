<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<jsp:include page="header.jsp" />

<section class="page-header">
    <div class="container">
        <h1 class="page-title gradient-text">Anh Hùng</h1>
        <p class="page-subtitle">Chọn chiến binh của bạn và thống trị tận thế</p>
    </div>
</section>

<section class="section">
    <div class="container">
        <!-- Tier Tabs -->
        <div class="tier-tabs">
            <a href="?tier=S Tier" class="tier-tab ${selectedTier == 'S Tier' ? 'active' : ''}">Hạng S</a>
            <a href="?tier=A Tier" class="tier-tab ${selectedTier == 'A Tier' ? 'active' : ''}">Hạng A</a>
            <a href="?tier=B Tier" class="tier-tab ${selectedTier == 'B Tier' ? 'active' : ''}">Hạng B</a>
            <a href="?tier=Limited" class="tier-tab ${selectedTier == 'Limited' ? 'active' : ''}">Giới Hạn</a>
        </div>

        <!-- Characters Grid -->
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
                        <button class="btn-primary btn-block">Mở Khóa</button>
                    </div>
                </div>
            </c:forEach>
        </div>

        <c:if test="${empty characters}">
            <div class="empty-state">
                <p>Không có nhân vật nào trong hạng này.</p>
            </div>
        </c:if>
    </div>
</section>

<jsp:include page="footer.jsp" />
