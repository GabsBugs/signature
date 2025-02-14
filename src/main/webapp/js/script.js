document.addEventListener('DOMContentLoaded', function () {
    const menuToggle = document.querySelector('.menu-toggle');
    const navMenu = document.querySelector('.nav-menu');

    menuToggle.addEventListener('click', function () {
        navMenu.classList.toggle('active');
    });
});

document.getElementById('dark-mode-switch').addEventListener('change', function() {
    document.body.classList.toggle('dark-mode', this.checked);
});



document.addEventListener('DOMContentLoaded', function () {
    const languageSelector = document.querySelector('.language-selector');
    const languageSwitcher = document.querySelector('.language-switcher');
    const selectedLanguage = document.querySelector('.selected-language');
    const languageDropdown = document.querySelector('.language-dropdown');
    const arrowIcon = document.querySelector('.arrow-icon i');

    const translations = {
        en: {
            welcome: "Welcome to SignaTrust",
            description: "Choose an option below to get started.",
            darkMode: "Dark Mode",
            help: "Help",
            SendMessage : "Send Message",
            ViewMessages :"View Messages",
            VerifySignature: "Verify Signature",
            SendMessageCardH3: "Send Message",
            SendMessageCardP: "Type a message and digitally sign it to ensure its authenticity.",
            SendMessageCardA: "Send Message",
            ViewMessagesH3: "View Messages",
            ViewMessagesP: "See all messages already sent and their signatures.",
            ViewMessagesA: "View Messages",
            VerifySignatureH3: "Verify Signature",
            VerifySignatureP: "Decrypt and verify that a digital signature is valid.",
            VerifySignatureA: "Verify Signature",
            home: "Home",
        },
        fr: {
            welcome: "Bienvenue sur SignaTrust",
            description: "Choisissez une option ci-dessous pour commencer.",
            darkMode: "Mode Sombre",
            help: "Aide",
            SendMessage: "Envoyer un Message",
            ViewMessages: "Voir les Messages",
            VerifySignature: "Vérifier la Signature",
            SendMessageCardH3: "Envoyer un Message",
            SendMessageCardP: "Tapez un message et signez-le numériquement pour en garantir l'authenticité.",
            SendMessageCardA: "Envoyer un Message",
            ViewMessagesH3: "Voir les Messages",
            ViewMessagesP: "Voir tous les messages déjà envoyés et leurs signatures.",
            ViewMessagesA: "Voir les Messages",
            VerifySignatureH3: "Vérifier la Signature",
            VerifySignatureP: "Déchiffrez et vérifiez qu'une signature numérique est valide.",
            VerifySignatureA: "Vérifier la Signature",
            home: "Accueil",
        },
        de: {
            welcome: "Willkommen bei SignaTrust",
            description: "Wählen Sie eine Option unten, um zu beginnen.",
            darkMode: "Dunkelmodus",
            help: "Hilfe",
            SendMessage: "Nachricht Senden",
            ViewMessages: "Nachrichten Anzeigen",
            VerifySignature: "Signatur Überprüfen",
            SendMessageCardH3: "Nachricht Senden",
            SendMessageCardP: "Geben Sie eine Nachricht ein und signieren Sie sie digital, um ihre Authentizität zu gewährleisten.",
            SendMessageCardA: "Nachricht Senden",
            ViewMessagesH3: "Nachrichten Anzeigen",
            ViewMessagesP: "Sehen Sie alle bereits gesendeten Nachrichten und ihre Signaturen.",
            ViewMessagesA: "Nachrichten Anzeigen",
            VerifySignatureH3: "Signatur Überprüfen",
            VerifySignatureP: "Entschlüsseln und überprüfen Sie, ob eine digitale Signatur gültig ist.",
            VerifySignatureA: "Signatur Überprüfen",
            home: "Startseite",
        },
        es: {
            welcome: "Bienvenido a SignaTrust",
            description: "Elija una opción a continuación para comenzar.",
            darkMode: "Modo Oscuro",
            help: "Ayuda",
            SendMessage: "Enviar Mensaje",
            ViewMessages: "Ver Mensajes",
            VerifySignature: "Verificar Firma",
            SendMessageCardH3: "Enviar Mensaje",
            SendMessageCardP: "Escriba un mensaje y firme digitalmente para garantizar su autenticidad.",
            SendMessageCardA: "Enviar Mensaje",
            ViewMessagesH3: "Ver Mensajes",
            ViewMessagesP: "Vea todos los mensajes ya enviados y sus firmas.",
            ViewMessagesA: "Ver Mensajes",
            VerifySignatureH3: "Verificar Firma",
            VerifySignatureP: "Descifre y verifique que una firma digital sea válida.",
            VerifySignatureA: "Verificar Firma",
            home: "Inicio",
        },
        pt: {
            welcome: "Bem-vindo ao SignaTrust",
            description: "Escolha uma opção abaixo para começar.",
            darkMode: "Modo Escuro",
            help: "Ajuda",
            SendMessage: "Enviar Mensagem",
            ViewMessages: "Visualizar Mensagens",
            VerifySignature: "Verificar Assinatura",
            SendMessageCardH3: "Enviar Mensagem",
            SendMessageCardP: "Digite uma mensagem e assine digitalmente para garantir sua autenticidade.",
            SendMessageCardA: "Enviar Mensagem",
            ViewMessagesH3: "Visualizar Mensagens",
            ViewMessagesP: "Veja todas as mensagens já enviadas e suas assinaturas.",
            ViewMessagesA: "Visualizar Mensagens",
            VerifySignatureH3: "Verificar Assinatura",
            VerifySignatureP: "Descriptografe e verifique se uma assinatura digital é válida.",
            VerifySignatureA: "Verificar Assinatura",
            home: "Início",
        },
        zh: {
            welcome: "欢迎来到 SignaTrust",
            description: "请从以下选项中选择一个开始。",
            darkMode: "暗模式",
            help: "帮助",
            SendMessage: "发送消息",
            ViewMessages: "查看消息",
            VerifySignature: "验证签名",
            SendMessageCardH3: "发送消息",
            SendMessageCardP: "输入消息并对其进行数字签名以确保其真实性。",
            SendMessageCardA: "发送消息",
            ViewMessagesH3: "查看消息",
            ViewMessagesP: "查看所有已发送的消息及其签名。",
            ViewMessagesA: "查看消息",
            VerifySignatureH3: "验证签名",
            VerifySignatureP: "解密并验证数字签名是否有效。",
            VerifySignatureA: "验证签名",
            home: "首页",
        },
        ja: {
            welcome: "SignaTrustへようこそ",
            description: "以下のオプションから選択して開始してください。",
            darkMode: "ダークモード",
            help: "ヘルプ",
            SendMessage: "メッセージを送信",
            ViewMessages: "メッセージを表示",
            VerifySignature: "署名を確認",
            SendMessageCardH3: "メッセージを送信",
            SendMessageCardP: "メッセージを入力し、デジタル署名してその信頼性を確保します。",
            SendMessageCardA: "メッセージを送信",
            ViewMessagesH3: "メッセージを表示",
            ViewMessagesP: "送信済みのすべてのメッセージとその署名を表示します。",
            ViewMessagesA: "メッセージを表示",
            VerifySignatureH3: "署名を確認",
            VerifySignatureP: "復号化してデジタル署名が有効かどうかを確認します。",
            VerifySignatureA: "署名を確認",
            home: "ホーム",
        },
        ru: {
            welcome: "Добро пожаловать в SignaTrust",
            description: "Выберите вариант ниже, чтобы начать.",
            darkMode: "Темный режим",
            help: "Помощь",
            SendMessage: "Отправить Сообщение",
            ViewMessages: "Просмотреть Сообщения",
            VerifySignature: "Проверить Подпись",
            SendMessageCardH3: "Отправить Сообщение",
            SendMessageCardP: "Введите сообщение и подпишите его цифровой подписью, чтобы гарантировать его подлинность.",
            SendMessageCardA: "Отправить Сообщение",
            ViewMessagesH3: "Просмотреть Сообщения",
            ViewMessagesP: "Просмотрите все отправленные сообщения и их подписи.",
            ViewMessagesA: "Просмотреть Сообщения",
            VerifySignatureH3: "Проверить Подпись",
            VerifySignatureP: "Расшифруйте и проверьте, действительна ли цифровая подпись.",
            VerifySignatureA: "Проверить Подпись",
            home: "Главная",
        },
    };

    function updateContent(language) {
        const elements = document.querySelectorAll('[data-key]');
        elements.forEach(element => {
            const key = element.getAttribute('data-key');
            if (translations[language] && translations[language][key]) {
                element.textContent = translations[language][key];

            }
        });
    }

    languageSwitcher.addEventListener('click', function () {
        languageSelector.classList.toggle('active');

        if (languageSelector.classList.contains('active')) {
            arrowIcon.style.transform = 'rotate(180deg)';
        } else {
            arrowIcon.style.transform = 'rotate(0deg)';
        }
    });

    languageDropdown.addEventListener('click', function (e) {
        if (e.target.tagName === 'LI') {
            const selectedValue = e.target.getAttribute('data-value');
            const selectedText = e.target.textContent;

            selectedLanguage.textContent = selectedText;

            languageSelector.classList.remove('active');
            arrowIcon.style.transform = 'rotate(0deg)';

            updateContent(selectedValue);

            console.log('Idioma selecionado:', selectedValue);
        }
    });

    document.addEventListener('click', function (e) {
        if (!languageSelector.contains(e.target)) {
            languageSelector.classList.remove('active');
            arrowIcon.style.transform = 'rotate(0deg)';
        }
    });
});