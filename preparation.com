<!DOCTYPE html>
<html lang="bn">

<head>

    <meta charset="UTF-8">

    <meta
        name="viewport"
        content="width=device-width, initial-scale=1.0"
    >

    <title>
        Preparation Center | AdmissionMate
    </title>

    <meta
        name="description"
        content="AdmissionMate Preparation Center - University Admission Preparation"
    >

    <style>

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            font-family:
                Arial,
                "Noto Sans Bengali",
                sans-serif;

            background: #f6f8fc;
            color: #172033;
            line-height: 1.5;
        }

        a {
            text-decoration: none;
            color: inherit;
        }

        .container {
            width: 92%;
            max-width: 1050px;
            margin: auto;
        }


        /* =====================
           NAVBAR
        ====================== */

        header {
            background: white;

            border-bottom:
                1px solid #e7eaf0;

            position: sticky;
            top: 0;

            z-index: 1000;
        }

        .navbar {

            min-height: 68px;

            display: flex;

            align-items: center;

            justify-content: space-between;
        }

        .logo {

            display: flex;

            align-items: center;

            gap: 9px;

            font-size: 21px;

            font-weight: 800;

            color: #155eef;
        }

        .logo-icon {

            width: 38px;
            height: 38px;

            display: flex;

            align-items: center;
            justify-content: center;

            background: #edf3ff;

            border-radius: 10px;

            font-size: 20px;
        }

        .nav-links {

            display: flex;

            gap: 20px;
        }

        .nav-links a {

            font-size: 13px;

            font-weight: 600;

            color: #4b5563;
        }

        .nav-links a:hover {

            color: #155eef;
        }

        .menu {

            display: none;

            border: none;

            background: transparent;

            font-size: 25px;

            cursor: pointer;
        }


        /* =====================
           PAGE HEADER
        ====================== */

        .page-header {

            text-align: center;

            padding: 45px 0 30px;

            background:

                radial-gradient(
                    circle at 50% 0%,
                    #e4edff,
                    transparent 55%
                ),

                #f6f8fc;
        }

        .badge {

            display: inline-block;

            background: #e7efff;

            color: #155eef;

            padding: 6px 13px;

            border-radius: 50px;

            font-size: 12px;

            font-weight: 700;

            margin-bottom: 12px;
        }

        .page-header h1 {

            font-size:
                clamp(28px, 5vw, 40px);

            margin-bottom: 8px;
        }

        .page-header h1 span {

            color: #155eef;
        }

        .page-header p {

            max-width: 570px;

            margin: auto;

            color: #667085;

            font-size: 13px;
        }


        /* =====================
           SEARCH
        ====================== */

        .search-box {

            width: 100%;

            max-width: 600px;

            margin: 23px auto 0;

            display: flex;

            background: white;

            border:
                1px solid #dfe4ec;

            border-radius: 11px;

            padding: 5px;

            box-shadow:
                0 8px 25px
                rgba(15, 23, 42, 0.06);
        }

        .search-box input {

            flex: 1;

            border: none;

            outline: none;

            padding: 11px 13px;

            font-size: 13px;
        }

        .search-box button {

            border: none;

            background: #155eef;

            color: white;

            padding: 0 17px;

            border-radius: 8px;

            cursor: pointer;

            font-weight: 700;
        }


        /* =====================
           CONTENT
        ====================== */

        .content {

            padding: 28px 0 50px;
        }

        .section-title {

            margin-bottom: 17px;
        }

        .section-title h2 {

            font-size: 22px;

            margin-bottom: 4px;
        }

        .section-title p {

            color: #667085;

            font-size: 12px;
        }


        /* =====================
           SUBJECTS
        ====================== */

        .subject-grid {

            display: grid;

            grid-template-columns:
                repeat(3, 1fr);

            gap: 14px;
        }

        .subject-card {

            background: white;

            border:
                1px solid #e5e9f0;

            border-radius: 15px;

            padding: 20px;

            cursor: pointer;

            transition: 0.2s;
        }

        .subject-card:hover {

            transform:
                translateY(-3px);

            border-color: #155eef;

            box-shadow:
                0 10px 28px
                rgba(15, 23, 42, 0.07);
        }

        .subject-icon {

            width: 45px;
            height: 45px;

            display: flex;

            align-items: center;
            justify-content: center;

            background: #edf3ff;

            border-radius: 11px;

            font-size: 22px;

            margin-bottom: 12px;
        }

        .subject-card h3 {

            font-size: 16px;

            margin-bottom: 4px;
        }

        .subject-card p {

            color: #667085;

            font-size: 11px;
        }


        /* =====================
           CHAPTER AREA
        ====================== */

        #chapterArea {

            display: none;

            margin-top: 35px;
        }

        .back-btn {

            border: none;

            background: white;

            border:
                1px solid #dfe4ec;

            padding: 8px 13px;

            border-radius: 8px;

            cursor: pointer;

            color: #475467;

            font-size: 12px;

            margin-bottom: 16px;
        }

        .back-btn:hover {

            border-color: #155eef;

            color: #155eef;
        }

        .selected-subject {

            background: white;

            border:
                1px solid #e5e9f0;

            border-radius: 16px;

            padding: 20px;

            margin-bottom: 17px;
        }

        .selected-subject h2 {

            font-size: 20px;

            margin-bottom: 3px;
        }

        .selected-subject p {

            color: #667085;

            font-size: 12px;
        }


        /* =====================
           CHAPTER CARDS
        ====================== */

        .chapter-list {

            display: grid;

            grid-template-columns:
                repeat(2, 1fr);

            gap: 11px;
        }

        .chapter {

            background: white;

            border:
                1px solid #e5e9f0;

            border-radius: 12px;

            padding: 15px;

            display: flex;

            align-items: center;

            justify-content: space-between;

            cursor: pointer;

            transition: 0.2s;
        }

        .chapter:hover {

            border-color: #155eef;

            transform:
                translateY(-2px);
        }

        .chapter-info {

            display: flex;

            align-items: center;

            gap: 11px;
        }

        .chapter-number {

            width: 32px;
            height: 32px;

            display: flex;

            align-items: center;
            justify-content: center;

            background: #edf3ff;

            color: #155eef;

            border-radius: 8px;

            font-size: 11px;

            font-weight: 800;
        }

        .chapter h3 {

            font-size: 13px;

            margin-bottom: 2px;
        }

        .chapter small {

            color: #98a2b3;

            font-size: 10px;
        }

        .arrow {

            color: #155eef;

            font-weight: 800;
        }


        /* =====================
           TOPIC AREA
        ====================== */

        #topicArea {

            display: none;

            margin-top: 35px;
        }

        .topic-header {

            background: white;

            border:
                1px solid #e5e9f0;

            border-radius: 16px;

            padding: 20px;

            margin-bottom: 17px;
        }

        .topic-header h2 {

            font-size: 20px;

            margin-bottom: 4px;
        }

        .topic-header p {

            color: #667085;

            font-size: 12px;
        }

        .topic-grid {

            display: grid;

            grid-template-columns:
                repeat(2, 1fr);

            gap: 11px;
        }

        .topic {

            background: white;

            border:
                1px solid #e5e9f0;

            border-radius: 12px;

            padding: 16px;

            cursor: pointer;

            transition: 0.2s;
        }

        .topic:hover {

            border-color: #155eef;

            transform:
                translateY(-2px);
        }

        .topic h3 {

            font-size: 13px;

            margin-bottom: 3px;
        }

        .topic p {

            color: #667085;

            font-size: 10px;

            margin-bottom: 9px;
        }

        .topic-btn {

            color: #155eef;

            font-size: 11px;

            font-weight: 700;
        }


        /* =====================
           FOOTER
        ====================== */

        footer {

            background: #101828;

            color: white;

            padding-top: 28px;
        }

        .footer {

            display: flex;

            justify-content: space-between;

            gap: 30px;

            padding-bottom: 25px;
        }

        .footer p {

            color: #98a2b3;

            font-size: 11px;

            max-width: 350px;

            margin-top: 9px;
        }

        .copyright {

            border-top:
                1px solid #1d2939;

            text-align: center;

            padding: 13px;

            color: #667085;

            font-size: 10px;
        }


        /* =====================
           TOAST
        ====================== */

        .toast {

            position: fixed;

            bottom: 20px;

            left: 50%;

            transform:
                translate(-50%, 70px);

            background: #101828;

            color: white;

            padding: 11px 17px;

            border-radius: 9px;

            font-size: 12px;

            opacity: 0;

            transition: 0.25s;

            z-index: 3000;
        }

        .toast.show {

            opacity: 1;

            transform:
                translate(-50%, 0);
        }


        /* =====================
           MOBILE
        ====================== */

        @media (max-width: 750px) {

            .nav-links {
                display: none;
            }

            .menu {
                display: block;
            }

            .subject-grid {

                grid-template-columns:
                    repeat(2, 1fr);
            }

            .chapter-list,
            .topic-grid {

                grid-template-columns: 1fr;
            }

            .footer {

                flex-direction: column;
            }

        }


        @media (max-width: 450px) {

            .container {
                width: 94%;
            }

            .subject-grid {

                gap: 9px;
            }

            .subject-card {

                padding: 15px;
            }

            .subject-icon {

                width: 40px;
                height: 40px;

                font-size: 19px;
            }

            .subject-card h3 {

                font-size: 14px;
            }

            .subject-card p {

                font-size: 10px;
            }

        }

    </style>

</head>


<body>


<!-- =====================
     NAVBAR
====================== -->

<header>

    <div class="container navbar">

        <a
            href="index.html"
            class="logo"
        >

            <div class="logo-icon">
                🎓
            </div>

            AdmissionMate

        </a>


        <nav class="nav-links">

            <a href="index.html">
                Home
            </a>

            <a href="preparation.html">
                Preparation
            </a>

            <a href="#">
                Questions
            </a>

            <a href="#">
                Model Test
            </a>

            <a href="#">
                Universities
            </a>

        </nav>


        <button
            class="menu"
            onclick="showToast('Menu শীঘ্রই আসছে!')"
        >
            ☰
        </button>

    </div>

</header>



<!-- =====================
     PAGE HEADER
====================== -->

<section class="page-header">

    <div class="container">

        <span class="badge">
            📚 Preparation Center
        </span>


        <h1>
            Start Your
            <span>Preparation</span>
        </h1>


        <p>
            Subject নির্বাচন করুন → Chapter নির্বাচন করুন →
            Topic অনুযায়ী preparation শুরু করুন।
        </p>


        <div class="search-box">

            <input
                id="searchInput"
                type="text"
                placeholder="🔍 Subject, chapter বা topic খুঁজুন..."
                onkeyup="searchContent()"
            >

            <button
                onclick="searchContent()"
            >
                Search
            </button>

        </div>

    </div>

</section>



<!-- =====================
     MAIN CONTENT
====================== -->

<main class="content">

    <div class="container">


        <!-- SUBJECT -->

        <div id="subjectArea">

            <div class="section-title">

                <h2>
                    📖 Choose a Subject
                </h2>

                <p>
                    আপনার preparation-এর subject নির্বাচন করুন।
                </p>

            </div>


            <div
                class="subject-grid"
                id="subjectGrid"
            >


                <div
                    class="subject-card"
                    data-search="physics পদার্থবিজ্ঞান"
                    onclick="showChapters('Physics')"
                >

                    <div class="subject-icon">
                        ⚛️
                    </div>

                    <h3>
                        Physics
                    </h3>

                    <p>
                        পদার্থবিজ্ঞান
                    </p>

                </div>


                <div
                    class="subject-card"
                    data-search="chemistry রসায়ন"
                    onclick="showChapters('Chemistry')"
                >

                    <div class="subject-icon">
                        🧪
                    </div>

                    <h3>
                        Chemistry
                    </h3>

                    <p>
                        রসায়ন
                    </p>

                </div>


                <div
                    class="subject-card"
                    data-search="mathematics math গণিত"
                    onclick="showChapters('Mathematics')"
                >

                    <div class="subject-icon">
                        📐
                    </div>

                    <h3>
                        Mathematics
                    </h3>

                    <p>
                        গণিত
                    </p>

                </div>


                <div
                    class="subject-card"
                    data-search="biology জীববিজ্ঞান"
                    onclick="showChapters('Biology')"
                >

                    <div class="subject-icon">
                        🧬
                    </div>

                    <h3>
                        Biology
                    </h3>

                    <p>
                        জীববিজ্ঞান
                    </p>

                </div>


                <div
                    class="subject-card"
                    data-search="english ইংরেজি"
                    onclick="showChapters('English')"
                >

                    <div class="subject-icon">
                        🇬🇧
                    </div>

                    <h3>
                        English
                    </h3>

                    <p>
                        English Preparation
                    </p>

                </div>


                <div
                    class="subject-card"
                    data-search="bangla বাংলা"
                    onclick="showChapters('Bangla')"
                >

                    <div class="subject-icon">
                        বাংলা
                    </div>

                    <h3>
                        Bangla
                    </h3>

                    <p>
                        বাংলা প্রস্তুতি
                    </p>

                </div>


            </div>

        </div>



        <!-- CHAPTER -->

        <div id="chapterArea">

            <button
                class="back-btn"
                onclick="backToSubjects()"
            >
                ← Back to Subjects
            </button>


            <div class="selected-subject">

                <h2 id="selectedSubject">
                    Physics
                </h2>

                <p>
                    একটি chapter নির্বাচন করুন।
                </p>

            </div>


            <div
                class="chapter-list"
                id="chapterList"
            >
            </div>

        </div>



        <!-- TOPIC -->

        <div id="topicArea">

            <button
                class="back-btn"
                onclick="backToChapters()"
            >
                ← Back to Chapters
            </button>


            <div class="topic-header">

                <h2 id="selectedChapter">
                    Chapter
                </h2>

                <p>
                    এখন একটি topic নির্বাচন করে preparation শুরু করুন।
                </p>

            </div>


            <div
                class="topic-grid"
                id="topicList"
            >
            </div>

        </div>


    </div>

</main>



<!-- =====================
     FOOTER
====================== -->

<footer>

    <div class="container footer">

        <div>

            <a
                href="index.html"
                class="logo"
            >

                <div class="logo-icon">
                    🎓
                </div>

                AdmissionMate

            </a>


            <p>
                University Admission preparation-এর
                জন্য একটি student-focused platform।
            </p>

        </div>

    </div>


    <div class="copyright">

        © 2026 AdmissionMate

    </div>

</footer>



<div
    class="toast"
    id="toast"
>
</div>



<script>


/* =========================
   DATA
========================= */

const chapters = {

    Physics: [

        "Vector",
        "Newtonian Mechanics",
        "Work, Energy & Power",
        "Gravitation",
        "Properties of Matter",
        "Oscillation",
        "Wave",
        "Thermodynamics",
        "Electrostatics",
        "Current Electricity",
        "Magnetism",
        "Electromagnetic Induction",
        "Optics",
        "Modern Physics",
        "Semiconductor & Electronics"

    ],


    Chemistry: [

        "Atomic Structure",
        "Periodic Table",
        "Chemical Bonding",
        "Chemical Reaction",
        "Mole Concept",
        "Thermochemistry",
        "Chemical Equilibrium",
        "Organic Chemistry",
        "Hydrocarbon",
        "Biochemistry",
        "Environmental Chemistry"

    ],


    Mathematics: [

        "Algebra",
        "Functions",
        "Trigonometry",
        "Coordinate Geometry",
        "Vector",
        "Differentiation",
        "Integration",
        "Complex Numbers",
        "Matrices & Determinants",
        "Probability",
        "Statistics"

    ],


    Biology: [

        "Cell Biology",
        "Cell Division",
        "Microorganisms",
        "Plant Physiology",
        "Animal Physiology",
        "Genetics",
        "Evolution",
        "Ecology",
        "Human Biology",
        "Biotechnology"

    ],


    English: [

        "Vocabulary",
        "Grammar",
        "Parts of Speech",
        "Tense",
        "Voice",
        "Narration",
        "Preposition",
        "Article",
        "Subject-Verb Agreement",
        "Sentence Correction",
        "Reading Comprehension"

    ],


    Bangla: [

        "বাংলা ব্যাকরণ",
        "সন্ধি",
        "সমাস",
        "কারক ও বিভক্তি",
        "বাগধারা",
        "এক কথায় প্রকাশ",
        "শুদ্ধ বানান",
        "শব্দ ও পদ",
        "সাহিত্য",
        "লেখক ও সাহিত্যকর্ম"

    ]

};



const topics = {

    "Vector": [

        "Vector Basics",
        "Vector Addition",
        "Vector Components",
        "Dot Product",
        "Cross Product"

    ],


    "Newtonian Mechanics": [

        "Motion",
        "Force",
        "Newton's Laws",
        "Friction",
        "Momentum",
        "Circular Motion"

    ],


    "Algebra": [

        "Basic Algebra",
        "Equation",
        "Quadratic Equation",
        "Sequence & Series",
        "Permutation & Combination"

    ],


    "Trigonometry": [

        "Trigonometric Ratio",
        "Trigonometric Identity",
        "Trigonometric Equation",
        "Inverse Trigonometry"

    ],


    "Atomic Structure": [

        "Atomic Models",
        "Quantum Numbers",
        "Electronic Configuration",
        "Spectrum"

    ],


    "Chemical Bonding": [

        "Ionic Bond",
        "Covalent Bond",
        "Hybridization",
        "Molecular Geometry"

    ],


    "Cell Biology": [

        "Cell Structure",
        "Cell Organelles",
        "Cell Membrane",
        "Cell Division"

    ],


    "Genetics": [

        "Mendelian Genetics",
        "DNA",
        "RNA",
        "Gene Expression"

    ],


    "Vocabulary": [

        "Synonym",
        "Antonym",
        "Word Meaning",
        "Idioms & Phrases"

    ],


    "Grammar": [

        "Parts of Speech",
        "Tense",
        "Article",
        "Preposition",
        "Voice"

    ],


    "বাংলা ব্যাকরণ": [

        "শব্দ",
        "পদ",
        "বাক্য",
        "কারক",
        "বিভক্তি"

    ],


    "সন্ধি": [

        "স্বরসন্ধি",
        "ব্যঞ্জনসন্ধি",
        "বিসর্গসন্ধি"

    ]

};



/* =========================
   SHOW CHAPTERS
========================= */

function showChapters(subject) {

    document
        .getElementById("subjectArea")
        .style.display = "none";


    document
        .getElementById("topicArea")
        .style.display = "none";


    document
        .getElementById("chapterArea")
        .style.display = "block";


    document
        .getElementById("selectedSubject")
        .textContent = subject;


    const list =
        document.getElementById("chapterList");


    list.innerHTML = "";


    chapters[subject].forEach(
        (chapter, index) => {

            const item =
                document.createElement("div");


            item.className = "chapter";


            item.onclick =
                () => showTopics(chapter);


            item.innerHTML = `

                <div class="chapter-info">

                    <div class="chapter-number">
                        ${String(index + 1).padStart(2, "0")}
                    </div>

                    <div>

                        <h3>
                            ${chapter}
                        </h3>

                        <small>
                            Topic দেখুন →
                        </small>

                    </div>

                </div>

                <div class="arrow">
                    →
                </div>
            `;


            list.appendChild(item);

        }
    );


    window.scrollTo({
        top: 0,
        behavior: "smooth"
    });

}



/* =========================
   SHOW TOPICS
========================= */

function showTopics(chapter) {

    document
        .getElementById("chapterArea")
        .style.display = "none";


    document
        .getElementById("topicArea")
        .style.display = "block";


    document
        .getElementById("selectedChapter")
        .textContent = chapter;


    const list =
        document.getElementById("topicList");


    list.innerHTML = "";


    const chapterTopics =
        topics[chapter] || [

            "Concept & Theory",
            "Important Formula",
            "Admission MCQ Practice",
            "Previous Questions"

        ];


    chapterTopics.forEach(
        (topic) => {

            const item =
                document.createElement("div");


            item.className = "topic";


            item.onclick =
                () => openTopic(topic);


            item.innerHTML = `

                <h3>
                    ${topic}
                </h3>

                <p>
                    Concept, explanation ও practice
                </p>

                <span class="topic-btn">
                    Start Learning →
                </span>

            `;


            list.appendChild(item);

        }
    );


    window.scrollTo({
        top: 0,
        behavior: "smooth"
    });

}



/* =========================
   BACK
========================= */

function backToSubjects() {

    document
        .getElementById("chapterArea")
        .style.display = "none";


    document
        .getElementById("subjectArea")
        .style.display = "block";


    window.scrollTo({
        top: 0,
        behavior: "smooth"
    });

}



function backToChapters() {

    document
        .getElementById("topicArea")
        .style.display = "none";


    document
        .getElementById("chapterArea")
        .style.display = "block";


    window.scrollTo({
        top: 0,
        behavior: "smooth"
    });

}



/* =========================
   TOPIC
========================= */

function openTopic(topic) {

    showToast(
        topic +
        " lesson শীঘ্রই যুক্ত হবে! 📚"
    );

}



/* =========================
   SEARCH
========================= */

function searchContent() {

    const query =
        document
            .getElementById("searchInput")
            .value
            .toLowerCase()
            .trim();


    const cards =
        document.querySelectorAll(
            ".subject-card"
        );


    cards.forEach(card => {

        const text =
            card.dataset.search
                .toLowerCase();


        if (
            query === "" ||
            text.includes(query)
        ) {

            card.style.display =
                "block";

        } else {

            card.style.display =
                "none";

        }

    });

}



/* =========================
   TOAST
========================= */

function showToast(text) {

    const toast =
        document.getElementById("toast");


    toast.textContent = text;


    toast.classList.add("show");


    setTimeout(() => {

        toast.classList.remove("show");

    }, 2200);

}


</script>


</body>

</html>
