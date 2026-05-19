<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<jsp:include page="header.jsp" />

<section class="page-header">
    <div class="container">
        <h1 class="page-title gradient-text">Vũ Khí & Trang Bị</h1>
        <p class="page-subtitle">Thu thập và tiến hóa trang bị mạnh mẽ</p>
    </div>
</section>

<section class="section">
    <div class="container">
        <!-- Weapon Tabs -->
        <div class="weapon-tabs">
            <a href="?category=Weapons" class="weapon-tab ${selectedCategory == 'Weapons' ? 'active' : ''}">Vũ Khí</a>
            <a href="?category=Armor" class="weapon-tab ${selectedCategory == 'Armor' ? 'active' : ''}">Giáp</a>
            <a href="?category=Accessories" class="weapon-tab ${selectedCategory == 'Accessories' ? 'active' : ''}">Phụ Kiện</a>
        </div>

        <!-- Weapons Grid -->
        <div class="weapons-grid">
            <c:forEach items="${weapons}" var="weapon">
                <div class="weapon-card">
                    <div class="weapon-icon ${weapon.rarityColor}">
                        <c:choose>
                            <c:when test="${weapon.category == 'Weapons'}">⚔️</c:when>
                            <c:when test="${weapon.category == 'Armor'}">🛡️</c:when>
                            <c:otherwise>💍</c:otherwise>
                        </c:choose>
                    </div>
                    <span class="weapon-rarity ${weapon.rarityColor}">${weapon.rarity}</span>
                    <h3 class="weapon-name">${weapon.name}</h3>
                    <p class="weapon-description">${weapon.description}</p>
                    <div class="weapon-stats">
                        <c:if test="${weapon.damage > 0}">
                            <div class="stat-row">
                                <span class="stat-label">Sát Thương:</span>
                                <span class="stat-value">${weapon.damage}</span>
                            </div>
                        </c:if>
                        <div class="stat-row">
                            <span class="stat-label">Tiến Hóa:</span>
                            <div class="evolution-dots">
                                <c:forEach begin="1" end="5" var="i">
                                    <span class="dot ${i <= weapon.evolution ? 'active' : ''}"></span>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                    <button class="btn-primary btn-block">Nâng Cấp</button>
                </div>
            </c:forEach>
        </div>

        <c:if test="${empty weapons}">
            <div class="empty-state">
                <p>Không có vũ khí nào trong danh mục này.</p>
            </div>
        </c:if>
    </div>
</section>

<jsp:include page="footer.jsp" />
