// =========================================
// LANGUAGE TRANSLATIONS
// =========================================
const translations = {

    // =====================================
    // ENGLISH
    // =====================================
    en: {

        // NAVBAR
        "nav-features": "Features",
        "nav-characters": "Characters",
        "nav-weapons": "Weapons",
        "nav-enemies": "Enemies",
        "nav-events": "Events",
        "nav-play": "Play Now",

        // HERO
        "hero-title1": "SURVIVE THE",
        "hero-title2": "APOCALYPSE",
        "hero-subtitle": "Fight thousands of zombies. Master roguelike skills. Survive endless attacks.",
        "hero-play": "▶ Play Now",
        "hero-download": "⬇ Download Game",
        "hero-trailer": "▶ Watch Trailer",
        "hero-zombies": "Zombies",
        "hero-skills": "Skills",
        "hero-heroes": "Heroes",

        // FEATURES
        "features-title": "Game Features",
        "features-subtitle": "Experience the ultimate zombie survival game with advanced gameplay mechanics",

        // CHARACTERS
        "characters-title": "Heroes",
        "characters-subtitle": "Choose your warrior and dominate the apocalypse",

        // EVENTS
        "events-title": "Live Events",
        "events-subtitle": "Join limited-time events and earn exclusive rewards",

        // DOWNLOAD
        "download-title": "Download Now",
        "download-subtitle": "Join millions of survivors worldwide",

        // WEAPONS
        "weapons-page-title": "Weapons & Equipment",
        "weapons-page-subtitle": "Collect and evolve powerful equipment",

        // FOOTER
        "footer-description": "The ultimate zombie survival game. Fight, survive and conquer the apocalypse.",
        "footer-game": "Game",
        "footer-community": "Community",
        "footer-support": "Support",

        // BUTTONS
        "unlock-btn": "Unlock",
        "join-event-btn": "Join Event",
        "download-btn": "Download",
        "view-all-btn": "View All Characters",

        // EMPTY
        "empty-characters": "No characters available in this tier.",
        "empty-events": "No events currently running.",
        "come-back": "Please come back later!"
    },



    // =====================================
    // VIETNAMESE
    // =====================================
    vi: {

        // NAVBAR
        "nav-features": "Tính Năng",
        "nav-characters": "Nhân Vật",
        "nav-weapons": "Vũ Khí",
        "nav-enemies": "Quái Vật",
        "nav-events": "Sự Kiện",
        "nav-play": "Chơi Ngay",

        // HERO
        "hero-title1": "SỐNG SÓT QUA",
        "hero-title2": "TẬN THẾ",
        "hero-subtitle": "Chiến đấu với hàng ngàn zombies. Làm chủ kỹ năng roguelike. Sống sót qua những đợt tấn công vô tận.",
        "hero-play": "▶ Chơi Ngay",
        "hero-download": "⬇ Tải Game",
        "hero-trailer": "▶ Xem Trailer",
        "hero-zombies": "Zombies",
        "hero-skills": "Kỹ Năng",
        "hero-heroes": "Anh Hùng",

        // FEATURES
        "features-title": "Tính Năng Game",
        "features-subtitle": "Trải nghiệm game sinh tồn zombie tối thượng với cơ chế gameplay tiên tiến",

        // CHARACTERS
        "characters-title": "Anh Hùng",
        "characters-subtitle": "Chọn chiến binh của bạn và thống trị tận thế",

        // EVENTS
        "events-title": "Sự Kiện Trực Tiếp",
        "events-subtitle": "Tham gia sự kiện giới hạn thời gian và nhận phần thưởng độc quyền",

        // DOWNLOAD
        "download-title": "Tải Ngay",
        "download-subtitle": "Tham gia hàng triệu người sống sót trên toàn thế giới",

        // WEAPONS
        "weapons-page-title": "Vũ Khí & Trang Bị",
        "weapons-page-subtitle": "Thu thập và tiến hóa trang bị mạnh mẽ",

        // FOOTER
        "footer-description": "Game sinh tồn zombie tối thượng. Chiến đấu, sinh tồn và chinh phục tận thế.",
        "footer-game": "Trò Chơi",
        "footer-community": "Cộng Đồng",
        "footer-support": "Hỗ Trợ",

        // BUTTONS
        "unlock-btn": "Mở Khóa",
        "join-event-btn": "Tham Gia Sự Kiện",
        "download-btn": "Tải Xuống",
        "view-all-btn": "Xem Tất Cả Nhân Vật",

        // EMPTY
        "empty-characters": "Không có nhân vật nào trong hạng này.",
        "empty-events": "Hiện tại không có sự kiện nào đang diễn ra.",
        "come-back": "Hãy quay lại sau!"
    }
};


// =========================================
// LANGUAGE SYSTEM
// =========================================
document.addEventListener("DOMContentLoaded", () => {

    const langToggle = document.getElementById("langToggle");
    const langText = document.getElementById("langText");

    // Default language
    let currentLang = localStorage.getItem("language") || "vi";


    // =====================================
    // UPDATE LANGUAGE
    // =====================================
    function updateLanguage(lang) {

        document.querySelectorAll("[data-translate]").forEach(el => {

            const key = el.getAttribute("data-translate");

            // Nếu có translation
            if (translations[lang] && translations[lang][key]) {

                el.textContent = translations[lang][key];
            }
        });

        // Update button text
        if (langText) {
            langText.textContent = lang.toUpperCase();
        }

        // Save
        localStorage.setItem("language", lang);
    }


    // =====================================
    // LOAD SAVED LANGUAGE
    // =====================================
    updateLanguage(currentLang);


    // =====================================
    // TOGGLE LANGUAGE
    // =====================================
    if (langToggle) {

        langToggle.addEventListener("click", () => {

            currentLang = currentLang === "vi" ? "en" : "vi";

            updateLanguage(currentLang);
        });
    }

});