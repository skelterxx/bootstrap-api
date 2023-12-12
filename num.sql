-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Авг 28 2023 г., 13:39
-- Версия сервера: 10.4.28-MariaDB
-- Версия PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `num`
--

-- --------------------------------------------------------

--
-- Структура таблицы `star_parsing`
--

CREATE TABLE `star_parsing` (
  `id` int(11) NOT NULL,
  `star_name` varchar(255) NOT NULL,
  `title` text NOT NULL,
  `text` text NOT NULL,
  `image` text NOT NULL,
  `add_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `star_parsing`
--

INSERT INTO `star_parsing` (`id`, `star_name`, `title`, `text`, `image`, `add_date`) VALUES
(1, 'Мэрилин Монро ', 'Американская киноактриса, секс-символ 1950-х годов, певица и модель. \r\nСтала одним из наиболее культовых образов американского кинематографа и всей мировой культуры.\r\n\r\nИ мы можем, опираясь на матрицу, посмотреть на ее жизнь и смерть, которая до сих пор вызывает немало вопросов.\r\n', 'Наша героиня обладала мягким женственным характером (Характер 11/Долг пусто), нуждалась в признании. Искренне хотела обрести семью, которой у нее никогда не было. \n\nМожно ли сказать, что Монро была очень сексуальной? Конечно! И это очевидно! \nТемперамент 4️ - говорит о том, что каждая часть ее тела настроена особой программой для привлечения партнеров.\n\nНесмотря на высокий темперамент, яркую внешность и женственность, Мерилин Монро не была альфа-самкой. Для такого названия необходим сильный Интерес 3️3/333.\nВ матрице Монро этот сектор ослаблен – иными словами она не могла наслаждаться жизнью.\n\nБолее того, актриса сильно и часто страдала, редко могла по-настоящему чем-то увлечься, ей быстро надоедали любые дела. Виной тому сочетания Интерес 3 + Логика 55.\n\nК тому же при ослабленном секторе Память 9️ у нее не было потребности в общении без повода. Она была замкнута, типичный интроверт.\n\nСкорее всего, накануне смерти актрису мучала давняя бессонница. Возможно, Мэрилин хотела заснуть, поэтому и выпила больше необходимого. Ведь при ее показателе Логика 55 / Интерес 3️ / Энергия 222 депрессия - затяжное, глубокое, даже какое-то дикое состояние, момент отчаяния и непреодолимой паники. Монро была выносливой физически, стойкой к алкоголю и наркотикам, поэтому могла просто не рассчитать дозу выпитых средств за день.\n\n\"Я никогда не хотела быть Мэрилин, это просто случилось. Мэрилин — это как вуаль, которую я ношу над Нормой Джин.\n', '/images/photo_2023-08-16_13-39-17.jpg', '2023-08-16 10:24:59'),
(2, 'Энне Бурда ', 'Немецкая издательница. \n\nВ 1949 году Энне создала издательство Burda, ориентированное на женщин, желающих в условиях послевоенной Европы выглядеть элегантно, несмотря на бедность.\n', 'Простая немецкая домохозяйка, помогла обычным женщинам со скромными доходами выглядеть элегантно и стильно. Она сделала себя сама и предлагала всем желающим попробовать то же самое: к журналу прилагались качественные выкройки, по которым женщины могли самостоятельно шить одежду.\r\n«Я хочу!» - этот мотив был определяющим для нее всю жизнь! Она должна была стать известной, но не сразу (Цель 2) …\r\n\r\nАнна Магдалена Леммингер, родившись в маленьком немецком городке, с детства поняла, что хочет другой жизни, чего-то особенного - ЧС 9.\r\n\r\nОна с детства мечтала о роскоши. Но ее родители не имели такой возможности.\r\n\r\nЖизнерадостная, позитивная, обладающая прекрасным аналитическим умом, манящая женщина,  позволяющая добиваться себя, знающая себе цену.  Ей нужен был мужчина, который приблизит её к мечте. Кем и стал Франц Бурда – владелец собственной типографии. Закрутилась семейная жизнь (что для неё было важно), рождение трех сыновей. \r\n\r\nНо в возрасте 40 лет Энне узнает об измене мужа и его новой семье. При этом становится известно, что супруг подарил любовнице типографию. \r\n\r\nВ этот момент взыграло самолюбие - Характер 1 не терпит кого-то еще, кроме себя. Происходит трансформация Долга в Характер 111, тем самым увеличиваются амбиции и целеустремлённость. \r\n\r\nПри этом одновременно происходит вторая и третья трансформация - Память 99 в Логику 5 и Удача 7 в Труд 6, тем самым увеличивается сектор Быт - \"Какого спрашивается ... издательство ушло в чужие руки?\" \r\n\r\nЭнне решает вернуть издательство, которое к тому времени уже пришло в упадок, обратно в семью. \r\n\r\nОна начала очень тонко манипулировать мужем (либо развод, либо издательство будет ее) - Логика5/Долг8/Удача7.\r\n\r\nЭнне смогла отсудить у любовницы мужа неприбыльный журнал, проанализировать потребности женщин того времени (Логика 55) и решила переделать его в издание, ориентированное на женщин.\r\n\r\nОна маленькими шажками шла к своей Цели 2.  Работая с утра до ночи и при этой не испытывая лени - Энергия 22. Создала прекрасную команду вокруг себя.\r\n\r\nЖурнал изначально не приносил прибыли, поэтому приходилось многое делать самой, постигая азы кройки и шитья (перевод Удача 7 в Труд 6). \r\n\r\nБлагодаря Интересу 33 – училась и познавала все новое с большим энтузиазмом, потому как знаний в пошиве одежды у нее совсем не было.\r\n\r\nЗа счет ослабленного сектора Память 9  смогла простить супруга и сохранить семью. \r\n\r\nВысшие силы ей во многом  помогали Энергия22/Логика5/Память999 - это возможность подключиться к информационному полю, использовать свою мощную память и интуицию. Она создала империю, которая стала известна на весь мир, видела выгоду, умела принимать верные решения.\r\n\r\n\"Я могу то, что хочу\", эти слова я часто себе повторяла. Поэтому многого добилась\".\r\n', '/images/photo_2023-08-16_13-39-12.jpg', '2023-08-16 10:30:50'),
(3, 'Стивен Кинг', 'Американский писатель, работающий в разнообразных жанрах, включая ужасы, триллер, фантастику, фэнтези, мистику, драму, детектив, получил прозвище «Король ужасов».', 'Американский писатель, работающий в разнообразных жанрах, включая ужасы, триллер, фантастику, фэнтези, мистику, драму, детектив, получил прозвище «Король ужасов».\r\n\r\nЭто один из самых интересных писателей современности. Настолько необычный, что его имя стало нарицательным, синонимом всего ужасного и мистического!\r\nОснова успеха  Стивена Кинга в коде – Интерес 33/Логика Пусто/Память 999. Только такое сочетание способно дать человеку фантазию без границ и рамок. Для его фантазии не существует никаких запретов.\r\n\r\nВторой важный показатель - сильная память 999. Этот сектор – наш словарный запас. А для писателя в первую очередь – его инструмент. Автор как бы повелевает буквами, управляет магией слов, наполняет их особым смыслом.\r\n\r\nИнтерес 33 – показывает сам талант, одаренность, возможность расти и развиваться в профессии, а также долгие годы удерживать интерес к тому, чем человек занимается.\r\nВ матрице у писателя есть рисковый код Интерес 33/Быт 2/Удача 7 и как следствие – наркомания и алкоголь. В таких случаях зависимость возникает по причине слишком легкого отношения к жизни. \r\nУ человека нет страха, нет возможности анализировать последствия (Логика Пусто), ему нестрашно что-то терять, т.к. он несерьезно относится к деньгам (Быт 2). Это сочетание говорит: живи сейчас или «ешьте, пейте – после смерти нет наслаждений».\r\n\r\nСогласно матрице Кинга, он всегда чистоплотен в отношении своего тела, но не в собственном доме. Он неряшлив в быту, его вещи чаще всего разбросаны. Но Стивена это не волнует, для него порядок неважен – Долг Пусто/Семья 2.\r\n\r\nЖенитьба никогда не была главной целью писателя. Ему, безусловно, нужен человек рядом, который обеспечит ему порядок и уход, но это не потребность семьи и связанных с ней ценностей. Более того, с возрастом писатель даже часто провоцировал разрыв отношений, на который никогда бы не пошла его жена Табита. Это весьма практичная женщина не отпустила бы Стивена по двум причинам: первая – деньги (у Табиты Быт 3), вторая – сильный брачный инстинкт, который велит сохранять отношения любой ценой. Невыносимая в быту, эта женщина устраивала Стивена инициативностью, своим состоянием он однозначно обязан ей. Если бы не расчетливая жена, Кинг не достиг бы столько.\r\n\r\nНекоторые показатели матрицы говорят о глубокой жизнерадостности писателя. По большей части он открытый и честный человек, но с людьми всю жизнь держит дистанцию (Семья 2/Долг Пуст). Зато они липнут к нему как мухи. \r\nСтивен Кинг – человек со здоровым сознанием. Единственное, что может в нем пугать – частые глупые поступки, плоские шутки и невероятная фантазия. За все это спасибо пустому сектору Логика!\r\n\r\nЕдинственный способ поддерживать беседу с дураком — это игнорировать...\r\n', '/images/photo_2023-08-16_13-39-04.jpg', '2023-08-16 10:33:46'),
(4, 'Стив Джобс', 'Американский предприниматель, изобретатель и промышленный дизайнер, получивший широкое признание в качестве пионера эры информационных технологий. Один из основателей, председатель совета директоров и CEO корпорации Apple. Один из основателей и CEO киностудии Pixar. ', 'Американский предприниматель, изобретатель и промышленный дизайнер, получивший широкое признание в качестве пионера эры информационных технологий. Один из основателей, председатель совета директоров и CEO корпорации Apple. Один из основателей и CEO киностудии Pixar. \n\nЭнергия 2222/Логика 55/ЧС1 – Код Гения. Такой человек благодаря своей энергии всегда опережает время. Это талантливый организатор, создатель и руководитель грандиозных проектов.\n\nОн должен был стать ИЗВЕСТНЫМ – Труд 6 и БОГАТЫМ Быт 5.\nДжобсу была присуща жадность – Логика 55/Быт 5.\n\nМногие отмечали его агрессивный стиль ведения бизнеса и это здесь видно: Здоровье 44/Логика 55. \nСтив был сложным человеком: жестким, расчетливым, мог искренне считать, люди ничтожны и в целом глупы. Часто говорил об этом прямо в лицо.\n\nИнтересным для вас может быть момент его здоровья. Природа заложила в Джобсе долгожительство -\nЭнергия 2222/Здоровье 44.\n\nНо почему он ушел так рано?! Здесь есть несколько факторов.\nЗдоровье 44/Логика 55/Интерес Пусто/Долг 8 – такое сочетание дает:\nБолезни поджелудочной железы (как диабет) – заболевания, развивающиеся на фоне нервных срывов и глубоких переживаний. Стива многое раздражало, его очень легко было вывести из себя. Джобс легко заводился, а конфликты были нормой его жизни. Перегруженность нервной системы или сочетание Здоровье 44/Логика 55 – сильно снижает иммунитет.\n\nПостоянная оценка всех, кто его окружал. Стива в буквальном смысле бесили глупые или медлительные люди. Сильное раздражение по любому поводу разрушает организм.\n\nДолг 8 часто является причиной фатального исхода. Ослабленный сектор говорит о халатном отношении к себе. У Джобса был снижен приоритет здоровья. Он ставил работу на первое место, а кроме того, боялся принять сложную информацию о болезни. Все эти показатели заставляют человека терять важное время, когда необходимо срочно принимать меры.\n\nНаиболее важные решения — это не то, что вы ДЕЛАЕТЕ, а то, что вы решили НЕ ДЕЛАТЬ.\n', '/images/photo_2023-08-16_13-38-53.jpg', '2023-08-16 10:34:48'),
(5, 'Мэрилин Монро ', 'Американская киноактриса, секс-символ 1950-х годов, певица и модель. \r\nСтала одним из наиболее культовых образов американского кинематографа и всей мировой культуры.\r\n\r\nИ мы можем, опираясь на матрицу, посмотреть на ее жизнь и смерть, которая до сих пор вызывает немало вопросов.\r\n', 'Наша героиня обладала мягким женственным характером (Характер 11/Долг пусто), нуждалась в признании. Искренне хотела обрести семью, которой у нее никогда не было. \r\n\r\nМожно ли сказать, что Монро была очень сексуальной? Конечно! И это очевидно! \r\nТемперамент 4️ - говорит о том, что каждая часть ее тела настроена особой программой для привлечения партнеров.\r\n\r\nНесмотря на высокий темперамент, яркую внешность и женственность, Мерилин Монро не была альфа-самкой. Для такого названия необходим сильный Интерес 3️3/333.\r\nВ матрице Монро этот сектор ослаблен – иными словами она не могла наслаждаться жизнью.\r\n\r\nБолее того, актриса сильно и часто страдала, редко могла по-настоящему чем-то увлечься, ей быстро надоедали любые дела. Виной тому сочетания Интерес 3 + Логика 55.\r\n\r\nК тому же при ослабленном секторе Память 9️ у нее не было потребности в общении без повода. Она была замкнута, типичный интроверт.\r\n\r\nСкорее всего, накануне смерти актрису мучала давняя бессонница. Возможно, Мэрилин хотела заснуть, поэтому и выпила больше необходимого. Ведь при ее показателе Логика 55 / Интерес 3️ / Энергия 222 депрессия - затяжное, глубокое, даже какое-то дикое состояние, момент отчаяния и непреодолимой паники. Монро была выносливой физически, стойкой к алкоголю и наркотикам, поэтому могла просто не рассчитать дозу выпитых средств за день.\r\n\r\n\"Я никогда не хотела быть Мэрилин, это просто случилось. Мэрилин — это как вуаль, которую я ношу над Нормой Джин.\r\n', '/images/photo_2023-08-16_13-39-17.jpg', '2023-08-16 10:24:59'),
(6, 'Энне Бурда ', 'Немецкая издательница. \r\n\r\nВ 1949 году Энне создала издательство Burda, ориентированное на женщин, желающих в условиях послевоенной Европы выглядеть элегантно, несмотря на бедность.\r\n', 'Простая немецкая домохозяйка, помогла обычным женщинам со скромными доходами выглядеть элегантно и стильно. Она сделала себя сама и предлагала всем желающим попробовать то же самое: к журналу прилагались качественные выкройки, по которым женщины могли самостоятельно шить одежду.\r\n«Я хочу!» - этот мотив был определяющим для нее всю жизнь! Она должна была стать известной, но не сразу (Цель 2) …\r\n\r\nАнна Магдалена Леммингер, родившись в маленьком немецком городке, с детства поняла, что хочет другой жизни, чего-то особенного - ЧС 9.\r\n\r\nОна с детства мечтала о роскоши. Но ее родители не имели такой возможности.\r\n\r\nЖизнерадостная, позитивная, обладающая прекрасным аналитическим умом, манящая женщина,  позволяющая добиваться себя, знающая себе цену.  Ей нужен был мужчина, который приблизит её к мечте. Кем и стал Франц Бурда – владелец собственной типографии. Закрутилась семейная жизнь (что для неё было важно), рождение трех сыновей. \r\n\r\nНо в возрасте 40 лет Энне узнает об измене мужа и его новой семье. При этом становится известно, что супруг подарил любовнице типографию. \r\n\r\nВ этот момент взыграло самолюбие - Характер 1 не терпит кого-то еще, кроме себя. Происходит трансформация Долга в Характер 111, тем самым увеличиваются амбиции и целеустремлённость. \r\n\r\nПри этом одновременно происходит вторая и третья трансформация - Память 99 в Логику 5 и Удача 7 в Труд 6, тем самым увеличивается сектор Быт - \"Какого спрашивается ... издательство ушло в чужие руки?\" \r\n\r\nЭнне решает вернуть издательство, которое к тому времени уже пришло в упадок, обратно в семью. \r\n\r\nОна начала очень тонко манипулировать мужем (либо развод, либо издательство будет ее) - Логика5/Долг8/Удача7.\r\n\r\nЭнне смогла отсудить у любовницы мужа неприбыльный журнал, проанализировать потребности женщин того времени (Логика 55) и решила переделать его в издание, ориентированное на женщин.\r\n\r\nОна маленькими шажками шла к своей Цели 2.  Работая с утра до ночи и при этой не испытывая лени - Энергия 22. Создала прекрасную команду вокруг себя.\r\n\r\nЖурнал изначально не приносил прибыли, поэтому приходилось многое делать самой, постигая азы кройки и шитья (перевод Удача 7 в Труд 6). \r\n\r\nБлагодаря Интересу 33 – училась и познавала все новое с большим энтузиазмом, потому как знаний в пошиве одежды у нее совсем не было.\r\n\r\nЗа счет ослабленного сектора Память 9  смогла простить супруга и сохранить семью. \r\n\r\nВысшие силы ей во многом  помогали Энергия22/Логика5/Память999 - это возможность подключиться к информационному полю, использовать свою мощную память и интуицию. Она создала империю, которая стала известна на весь мир, видела выгоду, умела принимать верные решения.\r\n\r\n\"Я могу то, что хочу\", эти слова я часто себе повторяла. Поэтому многого добилась\".\r\n', '/images/photo_2023-08-16_13-39-12.jpg', '2023-08-16 10:30:50'),
(8, 'Стив Джобс', 'Американский предприниматель, изобретатель и промышленный дизайнер, получивший широкое признание в качестве пионера эры информационных технологий. Один из основателей, председатель совета директоров и CEO корпорации Apple. Один из основателей и CEO киностудии Pixar. ', 'Американский предприниматель, изобретатель и промышленный дизайнер, получивший широкое признание в качестве пионера эры информационных технологий. Один из основателей, председатель совета директоров и CEO корпорации Apple. Один из основателей и CEO киностудии Pixar. \r\n\r\nЭнергия 2222/Логика 55/ЧС1 – Код Гения. Такой человек благодаря своей энергии всегда опережает время. Это талантливый организатор, создатель и руководитель грандиозных проектов.\r\n\r\nОн должен был стать ИЗВЕСТНЫМ – Труд 6 и БОГАТЫМ Быт 5.\r\nДжобсу была присуща жадность – Логика 55/Быт 5.\r\n\r\nМногие отмечали его агрессивный стиль ведения бизнеса и это здесь видно: Здоровье 44/Логика 55. \r\nСтив был сложным человеком: жестким, расчетливым, мог искренне считать, люди ничтожны и в целом глупы. Часто говорил об этом прямо в лицо.\r\n\r\nИнтересным для вас может быть момент его здоровья. Природа заложила в Джобсе долгожительство -\r\nЭнергия 2222/Здоровье 44.\r\n\r\nНо почему он ушел так рано?! Здесь есть несколько факторов.\r\nЗдоровье 44/Логика 55/Интерес Пусто/Долг 8 – такое сочетание дает:\r\nБолезни поджелудочной железы (как диабет) – заболевания, развивающиеся на фоне нервных срывов и глубоких переживаний. Стива многое раздражало, его очень легко было вывести из себя. Джобс легко заводился, а конфликты были нормой его жизни. Перегруженность нервной системы или сочетание Здоровье 44/Логика 55 – сильно снижает иммунитет.\r\n\r\nПостоянная оценка всех, кто его окружал. Стива в буквальном смысле бесили глупые или медлительные люди. Сильное раздражение по любому поводу разрушает организм.\r\n\r\nДолг 8 часто является причиной фатального исхода. Ослабленный сектор говорит о халатном отношении к себе. У Джобса был снижен приоритет здоровья. Он ставил работу на первое место, а кроме того, боялся принять сложную информацию о болезни. Все эти показатели заставляют человека терять важное время, когда необходимо срочно принимать меры.\r\n\r\nНаиболее важные решения — это не то, что вы ДЕЛАЕТЕ, а то, что вы решили НЕ ДЕЛАТЬ.\r\n', '/images/photo_2023-08-16_13-38-53.jpg', '2023-08-16 10:34:48'),
(9, 'Стивен Кинг', 'Американский писатель, работающий в разнообразных жанрах, включая ужасы, триллер, фантастику, фэнтези, мистику, драму, детектив, получил прозвище «Король ужасов».', 'Американский писатель, работающий в разнообразных жанрах, включая ужасы, триллер, фантастику, фэнтези, мистику, драму, детектив, получил прозвище «Король ужасов».\r\n\r\nЭто один из самых интересных писателей современности. Настолько необычный, что его имя стало нарицательным, синонимом всего ужасного и мистического!\r\nОснова успеха  Стивена Кинга в коде – Интерес 33/Логика Пусто/Память 999. Только такое сочетание способно дать человеку фантазию без границ и рамок. Для его фантазии не существует никаких запретов.\r\n\r\nВторой важный показатель - сильная память 999. Этот сектор – наш словарный запас. А для писателя в первую очередь – его инструмент. Автор как бы повелевает буквами, управляет магией слов, наполняет их особым смыслом.\r\n\r\nИнтерес 33 – показывает сам талант, одаренность, возможность расти и развиваться в профессии, а также долгие годы удерживать интерес к тому, чем человек занимается.\r\nВ матрице у писателя есть рисковый код Интерес 33/Быт 2/Удача 7 и как следствие – наркомания и алкоголь. В таких случаях зависимость возникает по причине слишком легкого отношения к жизни. \r\nУ человека нет страха, нет возможности анализировать последствия (Логика Пусто), ему нестрашно что-то терять, т.к. он несерьезно относится к деньгам (Быт 2). Это сочетание говорит: живи сейчас или «ешьте, пейте – после смерти нет наслаждений».\r\n\r\nСогласно матрице Кинга, он всегда чистоплотен в отношении своего тела, но не в собственном доме. Он неряшлив в быту, его вещи чаще всего разбросаны. Но Стивена это не волнует, для него порядок неважен – Долг Пусто/Семья 2.\r\n\r\nЖенитьба никогда не была главной целью писателя. Ему, безусловно, нужен человек рядом, который обеспечит ему порядок и уход, но это не потребность семьи и связанных с ней ценностей. Более того, с возрастом писатель даже часто провоцировал разрыв отношений, на который никогда бы не пошла его жена Табита. Это весьма практичная женщина не отпустила бы Стивена по двум причинам: первая – деньги (у Табиты Быт 3), вторая – сильный брачный инстинкт, который велит сохранять отношения любой ценой. Невыносимая в быту, эта женщина устраивала Стивена инициативностью, своим состоянием он однозначно обязан ей. Если бы не расчетливая жена, Кинг не достиг бы столько.\r\n\r\nНекоторые показатели матрицы говорят о глубокой жизнерадостности писателя. По большей части он открытый и честный человек, но с людьми всю жизнь держит дистанцию (Семья 2/Долг Пуст). Зато они липнут к нему как мухи. \r\nСтивен Кинг – человек со здоровым сознанием. Единственное, что может в нем пугать – частые глупые поступки, плоские шутки и невероятная фантазия. За все это спасибо пустому сектору Логика!\r\n\r\nЕдинственный способ поддерживать беседу с дураком — это игнорировать...\r\n', '/images/photo_2023-08-16_13-39-04.jpg', '2023-08-16 10:33:46'),
(10, 'Мэрилин Монро ', 'Американская киноактриса, секс-символ 1950-х годов, певица и модель. \r\nСтала одним из наиболее культовых образов американского кинематографа и всей мировой культуры.\r\n\r\nИ мы можем, опираясь на матрицу, посмотреть на ее жизнь и смерть, которая до сих пор вызывает немало вопросов.\r\n', 'Наша героиня обладала мягким женственным характером (Характер 11/Долг пусто), нуждалась в признании. Искренне хотела обрести семью, которой у нее никогда не было. \r\n\r\nМожно ли сказать, что Монро была очень сексуальной? Конечно! И это очевидно! \r\nТемперамент 4️ - говорит о том, что каждая часть ее тела настроена особой программой для привлечения партнеров.\r\n\r\nНесмотря на высокий темперамент, яркую внешность и женственность, Мерилин Монро не была альфа-самкой. Для такого названия необходим сильный Интерес 3️3/333.\r\nВ матрице Монро этот сектор ослаблен – иными словами она не могла наслаждаться жизнью.\r\n\r\nБолее того, актриса сильно и часто страдала, редко могла по-настоящему чем-то увлечься, ей быстро надоедали любые дела. Виной тому сочетания Интерес 3 + Логика 55.\r\n\r\nК тому же при ослабленном секторе Память 9️ у нее не было потребности в общении без повода. Она была замкнута, типичный интроверт.\r\n\r\nСкорее всего, накануне смерти актрису мучала давняя бессонница. Возможно, Мэрилин хотела заснуть, поэтому и выпила больше необходимого. Ведь при ее показателе Логика 55 / Интерес 3️ / Энергия 222 депрессия - затяжное, глубокое, даже какое-то дикое состояние, момент отчаяния и непреодолимой паники. Монро была выносливой физически, стойкой к алкоголю и наркотикам, поэтому могла просто не рассчитать дозу выпитых средств за день.\r\n\r\n\"Я никогда не хотела быть Мэрилин, это просто случилось. Мэрилин — это как вуаль, которую я ношу над Нормой Джин.\r\n', '/images/photo_2023-08-16_13-39-17.jpg', '2023-08-16 10:24:59');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `birth_date` date NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `avatar` text NOT NULL,
  `add_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `first_name`, `last_name`, `birth_date`, `email`, `password`, `avatar`, `add_date`) VALUES
(1, 'admin', 'Дмитрий', 'Черепков', '1984-12-26', 'skelter@bk.ru', 'qweqwe', '', '2023-08-19 21:00:00'),
(2, 'ivan111', 'ivan', 'ivanov', '2013-08-01', 'qwe@qwe.ru', 'qweqweqwe', '', '2023-08-19 21:00:00'),
(11, 'zxczxc', '', '', '0000-00-00', 'zxc@zxc.ru', '$2y$10$2DhrOp44XC.usxLtarlbSe9f9uFJN4t3mGfJuINogaGMb8UwkalTO', 'images/default-user.jpg', '2023-08-21 09:51:57'),
(12, 'wwerer', '', '', '0000-00-00', 'wer@qwer.ru', '$2y$10$N.u/zpScif8zkBZcoGXS9ejueS7GYE0QdpX.dE5fPRg4mfCyCm5Te', 'images/default-user.jpg', '2023-08-21 10:27:01'),
(14, 'klep_pik@mail.ru', '', '', '0000-00-00', 'klep_pik@mail.ru', '$2y$10$fl59S32GxKxbaFdFGREwXeoztVa5ZjcL2eeLO4RxWqRGOBLhGJw0K', 'images/default-user.jpg', '2023-08-22 11:08:54'),
(15, 'adminqwe', '', '', '0000-00-00', 'qweqwe@sdfqwe', '$2y$10$EeDABULZ.uJs3GBfsGVS0eEUdVzhSJPXqiCcpWEj00PFKWQGJtwKW', 'images/default-user.jpg', '2023-08-22 14:12:15'),
(16, 'admidd', '', '', '0000-00-00', 'kleppik@mail.ru', '$2y$10$6LJKAA9nKB/rAIpy3KmPdeOhU59sDhqhse16R4GFcOEp/QAU8faXe', 'images/default-user.jpg', '2023-08-22 16:43:44'),
(21, 'klepik@mail.ru', '', '', '0000-00-00', 'qwe@qweqwe.ru', '$2y$10$MI.A7rTehMlOnAwUhplumOrOUPqYdBs7plMMZbWvj4C6Qkvdm5Qq2', 'images/default-user.jpg', '2023-08-23 10:35:46'),
(22, 'klep_pk', '', '', '0000-00-00', 'klep_pk@mail.ru', '$2y$10$lQc1f95Mm23wx8bw.RaX4.8eWOU/9Out04T18ikFFP55nrjuji3Te', 'images/default-user.jpg', '2023-08-23 10:40:52'),
(23, 'qwertyu', '', '', '0000-00-00', 'kle_pik@mail.ru', '$2y$10$nnHOT7JTAXiSMj5PPSZO8ukHh10i6TfPikSqQUaVerYjG6lV8mNeu', 'images/default-user.jpg', '2023-08-23 10:41:42'),
(24, 'kleffp_pik@mail.ru', '', '', '0000-00-00', 'klwwep_pik@mail.ru', '$2y$10$jucQGUF8TwSLTuxkVh1u6.ng06y6vVLXfmDq6JiK9DsPNM4T61HtS', 'images/default-user.jpg', '2023-08-23 17:14:09'),
(25, 'klep_pik@wemail.ru', '', '', '0000-00-00', 'klep_pik@mweail.ru', '$2y$10$SO3PgpfdQ2DqQu9fQ.vq0ukmO4.sCjXt67DnB.TAymBVNLPcMY/wK', 'images/8dcaa3788221e1e0c2d8f39981bff3e8.jpg', '2023-08-23 17:15:58'),
(26, 'klep_piee@mail.ru', '', '', '0000-00-00', 'klep_pik@mawwil.ru', '$2y$10$2L7WbSFRP/fa7L1PmElNo.fnEqS5E8fwh8QBuUNKRAHaa6Jv9cKZG', 'images/default-user.jpg', '2023-08-26 21:42:34'),
(27, 'klep_pik@mail.ruasd', '', '', '0000-00-00', 'asdasd@asdadad', '$2y$10$ZJy3XnDrfA.Q3OcDgF9jquVgcECWL4IQ8yQmDnj9mWFYLZ4x6vxsC', 'images/default-user.jpg', '2023-08-27 11:08:48'),
(28, 'qweqweqweqwe', '', '', '0000-00-00', 'qweqweqwe@qwe', '$2y$10$9iAxZmKi3bQxAxnegq2SH.DKF.9nX1Hgb4PNA6XGJ.R.0TM4ftfEC', 'images/default-user.jpg', '2023-08-27 20:28:11');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `star_parsing`
--
ALTER TABLE `star_parsing`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `star_parsing`
--
ALTER TABLE `star_parsing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;