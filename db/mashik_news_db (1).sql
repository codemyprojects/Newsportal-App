-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 21, 2014 at 06:37 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mashik_news_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `news_admin`
--

CREATE TABLE IF NOT EXISTS `news_admin` (
  `aid` int(4) NOT NULL AUTO_INCREMENT,
  `uname` varchar(255) NOT NULL,
  `pwd` varchar(255) NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `news_admin`
--

INSERT INTO `news_admin` (`aid`, `uname`, `pwd`, `status`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news_articles`
--

CREATE TABLE IF NOT EXISTS `news_articles` (
  `aid` int(4) NOT NULL AUTO_INCREMENT,
  `atitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `adesc` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `status` int(1) NOT NULL,
  `catid` int(11) NOT NULL,
  PRIMARY KEY (`aid`),
  KEY `catid` (`catid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `news_articles`
--

INSERT INTO `news_articles` (`aid`, `atitle`, `adesc`, `status`, `catid`) VALUES
(18, 'दोस्रो तामाङ फिल्म एण्ड म्यूजिक अवार्ड ः ३५ विधामा अवार्ड वितरण', 'कार्यक्रममा तामाङ फिल्म समूहअन्तर्गत दोर्जे तामाङद्वारा निर्देशित चलचित्र ह्योरेम ले सर्वोत्कृष्ट चलचित्रको अवार्ड हात पा¥यो । रोशन फ्युबाले निर्देशन गरेको चलचित्र ल्हाप्साङकर्पो ले नेपाली भाषामा बनेको तामाङ फिल्मतर्फबाट ‘जुरी अवार्ड’ हात पारेको छ ।  \r\nत्यस्तै कुमार मोक्तानले सर्वोत्कृष्ट नायकको र सुकुमाया मोक्तानले सर्वोत्कृष्ट नायिकाको अवार्ड पाउनुभएको छ । अमिर दोङले (मायासे लासी) सर्वोत्कृष्ट निर्देशकको अवार्ड पाउनुभएको छ । यसैगरी पेशलकुमार तामाङले सर्वोत्कृष्ट पटकथा लेखन (ह्याङ्ला रिमठीम), रामबाबु योञ्जन (खसु न्हाङला दिनी) सर्वोत्कृष्ट पाश्र्व गायन पुरुष, शशिकला मोक्तान (ह्युल्ला माया) सर्वोत्कृष्ट पाश्र्व गायन महिला, विशाल काल्तन (ह्युल्ला माया) सर्वोत्कृष्ट सङ्गीतकार, भीम बल (कर्मला ग्याम) सर्वोत्कृष्ट कथा, विकास स्याङ्तान (दोर्जे डन) सर्वोत्कृष्ट खलनायक, उन्छोङ चेम्जोङ (कोन्ज्यो सोम) सर्वोत्कृष्ट द्धन्द्ध निर्देशक, युवराज राई (ह्याङ्ला रिमठीम) सर्वोत्कृष्ट छायाँकार, कुइसाङ लामा (अमिर ज्योज्यो) सर्वोत्कृष्ट हाँस्य अभिनेता र दिपेन्द्र दोङ (ङेमा दावा) सर्वोत्कृष्ट गीत लेखन अवार्ड हात पार्न सफल हुनुभएको छ । \r\nतामाङ गीत समूहमा सर्वोत्कृष्ट गायकको अवार्ड – विश्व दोङ (बदनाम ताजी चु जिन्दगी), सर्वोत्कृष्ट युगल गायन तुलसा वाईबा÷इन्दिरा योञ्जन÷चन्द्रकुमार दोङ (चलन चल्तिरी), सर्वोत्कृष्ट तामाङ गीत बदनाम ताजी (सूर्य मोक्तान), सर्वोत्कृष्ट गीत लेखन – पारखी माईला (म्हेन्दोह्राङ सारजीगाई), सर्वोत्कृष्ट सङ्गीत – चन्द्रकुमार दोङ (चलन चल्तिरी) र सर्वोत्कृष्ट तामाङ गीत (सामाजिक, सांस्कृतिक र राष्ट्रिय भाव झल्कने) अवार्ड – म्हेन्दोह्राङ सारजीगाअी (पारखी माईला) ले पाउनुभएको छ । \r\nतामाङ सेलो गीत समूहबाट सर्वोत्कृष्ट सेलो गीत बिर्सेको छैन (रामबाबु योञ्जन), सर्वोत्कृष्ट सेलो गायक आशुसेन लामा (घरचरी बस्यो घरमा), सर्वोत्कृष्ट सेलो गायिका – सानु वाईबा (परदेशमा बस्ने ए हजुर), सर्वोत्कृष्ट युगल गायन – प्रेम लोप्चन, इन्दिरा गोले, आङनिमा शेर्पा (हाम्मै लिला), सर्वोत्कृष्ट गीत लेखन सुशन लामा (नाच आज डम्फुको तालमा) र सर्वोत्कृष्ट सङ्गीत – टीका बमजन (राम्री है साह्रै) अवार्ड जित्न सफल हुनुभयो ।\r\nम्यूजिक भिडियो समूहमा सर्वोत्कृष्ट तामाङ म्यूजिक भिडियो चलन चल्तिरी (तुलसा वाईबा, इन्दिरा योञ्जन, चन्द्रकुमार दोङ), सर्वोत्कृष्ट तामाङ सेलो म्यूजिक भिडियो – हाम्मै लिला (प्रेम लोप्चन, इन्दिरा गोले, आङनिमा शेर्पा) र सर्वोत्कृष्ट तामाङ सेलो म्यूजिक भिडियो निर्देशक सुलोचना थिङ, प्रचण्ड (राम्री है साह्रै) लाई अवार्ड प्रदान गरिएको छ ।   \r\nनेपाली गीत समूहअन्तर्गत सर्वोत्कृष्ट गायक – आशुसेन लामा (गरी खान देऊ), सर्वोत्कृष्ट गायिका – शशिकला मोक्तान (नाचुँ नाचँु लाग्यो) र सर्वोत्कृष्ट नेपाली म्यूजिक भिडियो – आशुसेन लामा (गरी खान देऊ) अवार्ड हात पार्न सफल हुनुभयो । \r\nअवार्ड कार्यक्रममा २०६७ वैशाख १ देखि २०७० चैत १५ सम्मका तामाङ फिल्म र गीत सङ्गीतलाई प्रतिस्पर्धा गराइएको थियो । कार्यक्रममा तामाङ समुदायका विशिष्ट व्यक्तित्व, व्यवसायी, कलाकार, सङ्घसंस्थाका प्रतिनिधि, सञ्चारकर्मी, चलचित्रकर्मी लगायतको उपस्थिति थियो । \r\nतामाङ चलचित्र र गीत सङ्गीतको गुणात्मक विकासका लागि अवार्ड कार्यक्रम आयोजना गरिएको कार्यक्रम संयोजक तथा तामाङ चौतारी समूहका अध्यक्ष विनोद तामाङले बताउनुभयो । समूहले २०६७ मा पहिलो अवार्ड कार्यक्रम आयोजना गरेको थियो । \r\n', 1, 1),
(19, 'सङ्घीय गणतान्त्रिक महिला सङ्घ, नेपालको प्रथम राष्ट्रिय सम्मेलन सम्पन्न', 'पुरुषहरूले महिलालाई दमन गर्न बनाएको नियम कानुन मान्नुपर्ने जरुरी नभएकोले महिला अधिकार विरोधी सबै कानुन च्यात्न महिलाहरूले सशक्त आन्दोलन गर्नुपर्ने बताउनुभयो । आधा आकाश ओगटेका महिलाहरूको जबसम्म विकास हुँदैन, तबसम्म नेपाली समाजको समान विकास हुन नसक्ने बताउँदै पार्टीका सबै तहले महिला सङ्घ विस्तारका लागि विशेष भूमिका खेल्न निर्देशन दिनुभयो । उहाँले भन्नुभयो “चुनाब हार्दैमा पार्टी हराउने र जित्दैमा एकैचोटि फैलिँदैन । वास्तवमा पार्टीले चुनाव हारेको थिएन, देशी विदेशी शक्ति केन्द्रहरूले पहिचानसहितको सङ्घीयता चाहने शक्तिहरूलाई हराइएको थियो । आज पनि पार्टीेले आन्दोलनको नेतृत्व गरिदिन धेरैले आग्रह गरिरहेका छन् ।” \r\nयसैगरी उहाँले अब विचार मिल्ने सबै पार्टीसँग एकता र सहकार्य तीब्र पार्ने जानकारी दिनुभयो । संविधानसभाबाट जनताको संविधान नबन्ने जिकिर गर्दै उहाँले सडकबाटै समानान्तर संविधान बनाएर सडकबाटै जारी गर्नुपर्ने अवस्था रहेको बताउनुभयो । सानो पार्टी ठूलो हुने र ठूलो पार्टी नै सानो हुदै जाने गरेको तथ्य कोट्याउँदै आफ्नो पार्टी सानो भनेर हीनताबोध नलिन कार्यकर्तालाई आह्वान गर्नुभयो । नेपालको प्रगति र उन्नतिमा पुनर्उत्थान र यथास्थितिवादीहरूको षड्यन्त्रहरूको भण्डाफोर गर्दै पार्टीले जस्तोसुकै आन्दोलन गर्न तयार रहेको जनाउ दिँदै अध्यक्ष तामाङले कायकर्तालाई सधै श्रेष्ठता कायम गर्नुपर्नेमा जोड दिनुभयो । \r\nमहिला सङ्घका इन्चार्ज एवं पार्टीका केन्द्रीय सदस्य मिना वाईबाले सञ्चालन गरेको उक्त सम्मेलन स्थायी समिति सदस्य पाल्साङबज्र लामा अध्यक्ष, सदस्यहरू मीना वाईवा र लीला मोक्तान रहेको निर्वाचन मण्डलले चन्द्रकला रदखु राईको अध्यक्षतामा विभिन्न जिल्लाका २३ जना केन्द्रीय सदस्यहरूको सर्वसम्मत निर्वाचित गरेको छ । निर्वाचित हुनेहरूमा उपाध्यक्षमा प्रेमकुमारी तामाङ, महासचिवमा सृजना तामाङ, सचिवद्वयमा सुकमाया तामाङ र गंगा तामाङ, कोषाध्यक्षमा सुनिता तामाङ र केन्द्रीय सदस्यहरूमा क्रमशः पुष्प लामा, गंगा चाम्लिङ, पार्वती स्याङ्तान, रत्नकुमारी ब्लोन, सीता थोकर, लोम्साङ ब्लोन, बिना माया घिसिङ, चिनीमाया तामाङ, नानीमाया तामाङ, लक्ष्मी तामाङ, हिरा तामाङ, विष्णुमाया तामाङ, एलिना राई, सिर्जना नगरकोटी, यसोदा मेदासी ठकुरी, माया तामाङ, बुद्धिमाया तामाङ, इशा तामाङ छन् भने बाँकी सदस्यहरू कार्यसमितिले थप गर्ने जनाइएको छ ।\r\nनवनिर्वाचित सम्पूर्ण पदाधिकारीहरूलाई बधाई ज्ञापन गर्दै सङ्घीय गणतान्त्रिक समाजवादी पार्टीका केद्रीय महासचिव टेकबहादुर तामाङले महिलाविरुद्ध हुने सबै प्रकारका उत्पीडनको पक्षमा गरिने आन्दोलनलाई पार्टीले पूर्णसाथ दिने बताउनुभयो । नयाँ बन्ने संविधानमा महिलाहरूको अधिकार लेखाउन सडकबाट दबाब दिनुपर्ने र त्यसको नेतृत्व सङ्घीय गणतान्त्रिक महिला सङ्घ, नेपालले गर्नुपर्ने बताउनुभयो । महासचिव तामाङले महिलाहरू राजनीतिक रूपमा संगठित नभई पूर्णरूपमा महिला अधिकार प्राप्ति नहुने बताउनुभयो । उहाँले यथास्थितिवाद र पुनर्उत्थानवादी शक्तिहरू पहिचानसहितको सङ्घीयताको बाधक रहेको हुँदा आत्मनिर्णयको अधिकारसहितको सङ्घीयताले मात्रै महिला लगायत सम्पूर्ण उत्पीडित जाति÷वर्गको उत्थान हुने बताउँदै पार्टीले आगामी दिनमा गर्ने सडक सङ्घर्षको लागि तयार रहन सबैलाई आह्वान गर्नुभयो ।\r\n', 1, 2),
(21, 'मिर्गाैलापीडित लामा गुरुको लागि सहयोगको याचना', 'लामा गुरु निर्मलको दुवै मिर्गाैलाले काम गर्न छोडेपछि गएको तिन महिनादेखि उनी ओछ्यानमै थलिएर बसेका छन् । लामो समयदेखि बिरामी परे लामाको उपचारका लागि गंगालाल हृदय रोग केन्द्र काठमाडौँमा स्वास्थ्य जाँच गर्न जाँदा मुटु र फोक्सोमा समस्या देखाएको उहाँको श्रीमती मधुमाया गोले तामाङले बताउनुभयो । \r\nअस्पतालले थप उपचारका लागि राष्ट्रिय मिर्गाैला उपचार केन्द्र वनस्थली गंगवुमा रेफर गरेपछि त्यहाँ थप जाँच गर्दा उपचारको क्रममा संलग्न डा.अनिलदेव पन्तले लामाको दुवै मिर्गाैलाले काम नगर्ने भएको वताउनुभएको थियो । दुवै मिर्गाैलाले काम नगर्ने प्रमाणित भएपछि लामालाई मिर्गाैला प्रत्यारोपण गर्न आर्थिक समस्या भएको हो । \r\nउहाँको तिन महिना यता मिर्गाैलाको डायलोसिस मात्र गरिरहँदा ३ लाखभन्दा बढी रकम सकिएको परिवारले बताएका छन् । उहाँको मिर्गाैलाको एकपटक डायलोसिस गर्दा चार हजार, पाँच सय रूपयाँ लाग्ने गरेको र हरेक एक हप्तामा डायलोसिस गर्नु परेको नगरिए पेट फुलिएर श्वासप्रस्वासमा समस्या हुने गरेको मिगौलापीडित लामाले बताउनुभएको छ । उहाँले आफूसँग भएको नगद सबै जाँच गराउने क्रममा सकेको र थप उपचारका लागि आर्थिक अभाव भएको बताउनुभयो ।  \r\nराष्ट्रिय मिर्गाैला उपचार केन्द्र वनस्थली काठमाडौँले मिर्गाैला प्रत्यारोपण गर्न ९ लाखभन्दा बढी रूपैयाँ लाग्ने जनाएको लामाका परिवारले जनाएको छ । हाल उहाँ धनकुटाको हिले बजारमा डेरा गरी परिवारसँग बसिरहनुभएको छ । उहाँको चार वर्षको एक छोरा र श्रीमती छन् । उहाँको उपचारका लागि सहयोग गरि दिने लामाले आफ्नो आफन्त साथीभाइ, नातागोता र सङ्घसंस्थालाई अनुरोध गर्नुभएको छ । \r\n', 0, 13),
(22, 'डा. चमला लामा सम्मानित ', 'डा. लामाले बुबाआमाको सहयोग र प्रेरणाकै कारण आपूmले यो सफलता हासिल गरेको बताउनुभयो । ‘बुबा आमाले राम्रो गाईड गर्नुभयो र आज यो सफलता प्राप्त भयो, यसको श्रेय उहाँहरूलाई नै दिन चाहन्छु’, उहाँले बताउनुभयो । यसै महिना अमेरिका फर्कने तयारीमा रहनुभएका लामाले केही वर्ष रिसर्चमा संलग्न हुने योजना रहेको जानकारी गराउनुभयो । हाल नेपालमै बसेर काम गर्ने वातावरण नभए पनि आफ्नो क्षेत्रबाट तामाङ समुदाय र देशका लागि सक्दो योगदान दिने प्रतिवद्धता डा. लामाले जनाउनुभयो । \r\nकार्यक्रममा बोल्दै प्रमुख अतिथि एवं नेपाल तामाङ घेदुङका महासचिव ब्लोनले तामाङ समुदायको महिलाबाट डा. लामाले विद्यावारिधि गरेर उदाहरण बन्न सफल हुनुभएको बताउनुभयो । महासचिव ब्लोनले डा. लामालाई बधाई दिँदै आपूmले प्राप्त गरेको ज्ञान तामाङ समुदाय र देश विकासमा सदुपयोग गर्न सुझाव दिनुभयो । उहाँले डा. लामाको सफलताप्रति समग्र तामाङ समुदायले गर्व गर्नुपर्ने र नयाँ पुस्ताले उहाँलाई प्रेरणाको स्रोतको रुपमा लिनुपर्ने धारणा राख्नुभयो । तामाङ समुदाय अझै ६१ प्रतिशत निरक्षर रहेको बताउँदै महासचिव ब्लोनले अनावश्यक खर्च कटाएर शिक्षामा लगानी गर्न अभिभावकहरूलाई आग्रह गर्नुभयो । \r\nडा. लामाका बुबा तीर्थबहादुर तामाङले पहिले आपूm स्कुल जाँदा तामाङ (भोटे)ले पनि पढ्छ र ? भनेर अन्य जातिले होच्याउँदा साह्रै नराम्रो लागेकोले आफ्नो सबै छोराछोरीलाई दुःख गरेर पढाएको सुनाउनुभयो । ‘जस्तोसुकै दुःख गरेर पनि छोराछोरीलाई पढाउनुपर्छ भन्ने हाम्रो सपना अहिले पूरा भए जस्तो लागेको छ । छोरीको सफलताबाट हामी अत्यन्त गौरवान्वित भएका छौं ।’, तामाङले भन्नुभयो । \r\nस्वयम्भु तामाङ समाजका अध्यक्ष कुमारसिंह तामाङको सभापतित्वमा भएको कार्यक्रममा मेजर हितबहादुर गुरुङ, आशाराम दोङ, भोजराज तामाङ, पुण्यसागर लामालगायतले मन्तव्य राख्नुभएको थियो । समाजका सचिव इन्द्रराम मोक्तानले संस्थाको बारेमा जानकारी दिनुभएको थियो ।\r\n', 0, 14);

-- --------------------------------------------------------

--
-- Table structure for table `news_category`
--

CREATE TABLE IF NOT EXISTS `news_category` (
  `catid` int(4) NOT NULL AUTO_INCREMENT,
  `catname` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `catdesc` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`catid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `news_category`
--

INSERT INTO `news_category` (`catid`, `catname`, `catdesc`, `image`, `status`) VALUES
(8, 'दोस्रो तामाङ फिल्म एण्ड म्यूजिक अवार्ड', 'उत्कृष्ट नायक कुमार मोक्तान, उत्कृष्ट नायिका सुकुमाया मोक्तान काठमाडौं, वैशाख ११ – सर्वोत्कृष्ट तामाङ फिल्म, गीत, सङ्गीत र कलाकारलाई अवार्डबाट सम्मानित गरिएको छ । बिहिबार भद्रकालीस्थित आर्मी अफिसर्स क्लबमा आयोजित ‘दोस्रो तामाङ फिल्म एण्ड म्यूजिक अवार्ड २०७१’ समारोहमा विभिन्न ३५ विधामा अवार्ड वितरण गरिएको हो । तामाङ चौतारी समूह र तामाङ चलचित्र सङ्घले आयोजना गरेको अवार्ड वितरण समारोहमा गायिका इन्दिरा गोले र अभिनेत्री चाँदनी मोक्तानलाई ‘लाईफटाईम एचिभ्मेन्ट अवार्ड’ बाट अ', 'Tulips.jpg', 1),
(9, 'Oli Bankok', 'skdjfsd dskjdf dkjd dkjdf dfkj d jdfkj djdf kjdf dkjf kjdf kjdf jdfk dfjdkfj ', '', 1),
(11, 'fdg', 'dfgdfgdfgf', '', 1),
(12, 'dsfds', 'fdsfdssd', 'image', 1),
(13, 'Information Technology', 'all about the inforamtion technology', 'Jellyfish.jpg', 1),
(28, 'Ã Â¤ÂÃ Â¤Â®Ã Â¤Â¾Ã Â¤â€œÃ Â¤ÂµÃ Â¤Â¾Ã Â¤Â¦Ã Â¥â‚¬ Ã Â¤â€¦Ã Â¤Â§Ã Â¥ÂÃ Â¤Â¯Ã Â¤â€¢Ã Â¥ÂÃ Â¤Â· Ã Â¤ÂªÃ Â¥ÂÃ Â¤Â·Ã Â¥ÂÃ Â¤ÂªÃ Â¤â€¢Ã Â¤Â®Ã Â¤Â² Ã Â¤Â¦Ã Â¤Â¾Ã Â¤Â¹Ã Â¤Â¾Ã Â¤Â²Ã Â¤Â²Ã Â¥â€¡ Ã Â¤Â¹Ã Â¥â€¡Ã Â¤Å¸Ã Â¥Å’Ã Â¤â€šÃ Â¤Â¡Ã Â¤Â¾ Ã Â¤Â®Ã Â¤Â¹Ã Â¤Â¾Ã ', 'Ã Â¤ÂÃ Â¤Â®Ã Â¤Â¾Ã Â¤â€œÃ Â¤ÂµÃ Â¤Â¾Ã Â¤Â¦Ã Â¥â‚¬ Ã Â¤â€¦Ã Â¤Â§Ã Â¥ÂÃ Â¤Â¯Ã Â¤â€¢Ã Â¥ÂÃ Â¤Â· Ã Â¤ÂªÃ Â¥ÂÃ Â¤Â·Ã Â¥ÂÃ Â¤ÂªÃ Â¤â€¢Ã Â¤Â®Ã Â¤Â² Ã Â¤Â¦Ã Â¤Â¾Ã Â¤Â¹Ã Â¤Â¾Ã Â¤Â²Ã Â¤Â²Ã Â¥â€¡ Ã Â¤Â¹Ã Â¥â€¡Ã Â¤Å¸Ã Â¥Å’Ã Â¤â€šÃ Â¤Â¡Ã Â¤Â¾ Ã Â¤Â®Ã Â¤Â¹Ã Â¤Â¾Ã Â¤Â§Ã Â¤Â¿Ã Â¤ÂµÃ Â¥â€¡Ã Â¤Â¶Ã Â¤Â¨Ã Â¤Â²Ã Â¥â€¡ Ã Â¤â€¦Ã Â¤ËœÃ Â¤Â¿ Ã Â¤Â¸Ã Â¤Â¾Ã Â¤Â°Ã Â¥â€¡Ã Â¤â€¢Ã Â¤Â¾ Ã Â¤ÂªÃ Â¥ÂÃ Â¤ÂÃ Â¤Å“Ã Â¥â‚¬Ã Â¤ÂµÃ Â¤Â¾Ã Â¤Â¦Ã Â¥â‚¬', '\r\n', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news_category_cultural`
--

CREATE TABLE IF NOT EXISTS `news_category_cultural` (
  `catid` int(4) NOT NULL AUTO_INCREMENT,
  `catname` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `catdesc` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`catid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `news_category_cultural`
--

INSERT INTO `news_category_cultural` (`catid`, `catname`, `catdesc`, `image`, `status`) VALUES
(8, 'Maoist vela ', 'asdmfsdkm dsfkjds k', '', 1),
(9, 'Oli Bankok', 'skdjfsd dskjdf dkjd dkjdf dfkj d jdfkj djdf kjdf dkjf kjdf kjdf jdfk dfjdkfj ', '', 1),
(11, 'fdg', 'dfgdfgdfgf', '', 1),
(12, 'dsfds', 'fdsfdssd', 'image', 1),
(13, 'Information Technology', 'all about the inforamtion technology', 'Jellyfish.jpg', 1),
(28, 'à¤¸à¤°à¥à¤µà¥‹à¤šà¥à¤šà¤•à¥‹ à¤¨à¥à¤¯à¤¾à¤¯à¤¾à¤§à¥€à¤¶à¤•à¥‹ à¤²à¤¾à¤—à¤¿ à¥® à¤¨à¤¾à¤® à¤¸à¤¿à¤«à¤¾à¤°à¤¿à¤¸', 'à¤•à¤¾à¤ à¤®à¤¾à¤¡à¥Œ , à¤µà¥ˆà¤¶à¤¾à¤– à¥¯ - à¤¨à¥à¤¯à¤¾à¤¯ à¤ªà¤°à¤¿à¤·à¤¦à¥à¤²à¥‡ à¤¸à¤°à¥à¤µà¥‹à¤šà¥à¤šà¤®à¤¾ à¤¸à¥à¤¥à¤¾à¤¯à¥€ à¤¨à¥à¤¯à¤¾à¤¯à¤¾à¤§à¥€à¤¶ à¤¨à¤¿à¤¯à¥à¤•à¥à¤¤à¤¿à¤•à¥‹ à¤²à¤¾à¤—à¤¿ à¥® à¤œà¤¨à¤¾à¤•à¥‹ à¤¨à¤¾à¤® à¤¸à¤‚à¤¸à¤¦à¥€à¤¯ à¤¸à¥à¤¨à¥à¤µà¤¾à¤ˆà¤•à¥‹ à¤²à¤¾à¤—à¤¿ à¤¸à¤¿à¤«à¤¾à¤°à¤¿à¤¸ à¤—à¤°à¥‡à¤•à¥‹ à¤› à¥¤ à¤¸à¤‚à¤µà¤¿à¤§à¤¾à¤¨à¤…à¤¨à¥à¤¸à¤¾à¤° à¤®à¥à¤¦à¥à¤¦à¤¾à¤•à¥‹ à¤šà¤¾à¤ª à¤¹à¥‡à¤°à¥€ à¥§à¥« à¤¸à¥à¤¥à¤¾à¤¯à¥€ à¤° à¥§à¥¦ à¤¸à¤®à¥à¤® à¤…à¤¸à¥à¤¥à¤¾à¤¯à¥€ à¤¨à¥à¤¯à¤¾à¤¯à¤¾à¤§à¥€à¤¶à¤•à¥‹ à¤¦à¤°à¤¬à¤¨à¥à¤¦à¥€ à¤ªà¤¾à¤à¤•à¥‹ à¤¸à¤°à¥à¤µà¥‹à¤šà¥à¤šà¤®à¤¾ à¥© à¤µà¤°à¥à¤·à¤¦à¥‡à¤–à¤¿ à¤¸à¥à¤¥à¤¾à¤¯à¥€ à¤¨à¥à¤¯à¤¾à¤¯à¤¾à¤§à¥€à¤¶ à¤¨à¤¿à¤¯à¥à¤•à¥à¤¤à¤¿ à¤­à¤à¤•à¥‹ à¤¥à¤¿à¤à¤¨à¥ à¥¤', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news_category_entertainment`
--

CREATE TABLE IF NOT EXISTS `news_category_entertainment` (
  `catid` int(4) NOT NULL AUTO_INCREMENT,
  `catname` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `catdesc` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`catid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `news_category_entertainment`
--

INSERT INTO `news_category_entertainment` (`catid`, `catname`, `catdesc`, `image`, `status`) VALUES
(8, 'दोस्रो तामाङ फिल्म एण्ड म्यूजिक अवार्ड', '३५ विधामा अवार्ड वितरण\r\n\r\nउत्कृष्ट नायक कुमार मोक्तान, उत्कृष्ट नायिका सुकुमाया मोक्तान काठमाडौं, वैशाख ११ – सर्वोत्कृष्ट तामाङ फिल्म, गीत, सङ्गीत र कलाकारलाई अवार्डबाट सम्मानित गरिएको छ । बिहिबार भद्रकालीस्थित आर्मी अफिसर्स क्लबमा आयोजित ‘दोस्रो तामाङ फिल्म एण्ड म्यूजिक अवार्ड २०७१’ समारोहमा विभिन्न ३५ विधामा अवार्ड वितरण गरिएको हो ।', '', 1),
(9, 'Oli Bankok', 'skdjfsd dskjdf dkjd dkjdf dfkj d jdfkj djdf kjdf dkjf kjdf kjdf jdfk dfjdkfj ', '', 1),
(11, 'fdg', 'dfgdfgdfgf', '', 1),
(12, 'dsfds', 'fdsfdssd', 'image', 1),
(13, 'Information Technology', 'all about the inforamtion technology', 'Jellyfish.jpg', 1),
(28, 'à¤¸à¤°à¥à¤µà¥‹à¤šà¥à¤šà¤•à¥‹ à¤¨à¥à¤¯à¤¾à¤¯à¤¾à¤§à¥€à¤¶à¤•à¥‹ à¤²à¤¾à¤—à¤¿ à¥® à¤¨à¤¾à¤® à¤¸à¤¿à¤«à¤¾à¤°à¤¿à¤¸', 'à¤•à¤¾à¤ à¤®à¤¾à¤¡à¥Œ , à¤µà¥ˆà¤¶à¤¾à¤– à¥¯ - à¤¨à¥à¤¯à¤¾à¤¯ à¤ªà¤°à¤¿à¤·à¤¦à¥à¤²à¥‡ à¤¸à¤°à¥à¤µà¥‹à¤šà¥à¤šà¤®à¤¾ à¤¸à¥à¤¥à¤¾à¤¯à¥€ à¤¨à¥à¤¯à¤¾à¤¯à¤¾à¤§à¥€à¤¶ à¤¨à¤¿à¤¯à¥à¤•à¥à¤¤à¤¿à¤•à¥‹ à¤²à¤¾à¤—à¤¿ à¥® à¤œà¤¨à¤¾à¤•à¥‹ à¤¨à¤¾à¤® à¤¸à¤‚à¤¸à¤¦à¥€à¤¯ à¤¸à¥à¤¨à¥à¤µà¤¾à¤ˆà¤•à¥‹ à¤²à¤¾à¤—à¤¿ à¤¸à¤¿à¤«à¤¾à¤°à¤¿à¤¸ à¤—à¤°à¥‡à¤•à¥‹ à¤› à¥¤ à¤¸à¤‚à¤µà¤¿à¤§à¤¾à¤¨à¤…à¤¨à¥à¤¸à¤¾à¤° à¤®à¥à¤¦à¥à¤¦à¤¾à¤•à¥‹ à¤šà¤¾à¤ª à¤¹à¥‡à¤°à¥€ à¥§à¥« à¤¸à¥à¤¥à¤¾à¤¯à¥€ à¤° à¥§à¥¦ à¤¸à¤®à¥à¤® à¤…à¤¸à¥à¤¥à¤¾à¤¯à¥€ à¤¨à¥à¤¯à¤¾à¤¯à¤¾à¤§à¥€à¤¶à¤•à¥‹ à¤¦à¤°à¤¬à¤¨à¥à¤¦à¥€ à¤ªà¤¾à¤à¤•à¥‹ à¤¸à¤°à¥à¤µà¥‹à¤šà¥à¤šà¤®à¤¾ à¥© à¤µà¤°à¥à¤·à¤¦à¥‡à¤–à¤¿ à¤¸à¥à¤¥à¤¾à¤¯à¥€ à¤¨à¥à¤¯à¤¾à¤¯à¤¾à¤§à¥€à¤¶ à¤¨à¤¿à¤¯à¥à¤•à¥à¤¤à¤¿ à¤­à¤à¤•à¥‹ à¤¥à¤¿à¤à¤¨à¥ à¥¤', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news_category_interview`
--

CREATE TABLE IF NOT EXISTS `news_category_interview` (
  `catid` int(4) NOT NULL AUTO_INCREMENT,
  `catname` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `catdesc` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`catid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `news_category_interview`
--

INSERT INTO `news_category_interview` (`catid`, `catname`, `catdesc`, `image`, `status`) VALUES
(8, 'Maoist vela ', 'asdmfsdkm dsfkjds k', '', 1),
(9, 'Oli Bankok', 'skdjfsd dskjdf dkjd dkjdf dfkj d jdfkj djdf kjdf dkjf kjdf kjdf jdfk dfjdkfj ', '', 1),
(11, 'fdg', 'dfgdfgdfgf', '', 1),
(12, 'dsfds', 'fdsfdssd', 'image', 1),
(13, 'Information Technology', 'all about the inforamtion technology', 'Jellyfish.jpg', 1),
(28, 'à¤¸à¤°à¥à¤µà¥‹à¤šà¥à¤šà¤•à¥‹ à¤¨à¥à¤¯à¤¾à¤¯à¤¾à¤§à¥€à¤¶à¤•à¥‹ à¤²à¤¾à¤—à¤¿ à¥® à¤¨à¤¾à¤® à¤¸à¤¿à¤«à¤¾à¤°à¤¿à¤¸', 'à¤•à¤¾à¤ à¤®à¤¾à¤¡à¥Œ , à¤µà¥ˆà¤¶à¤¾à¤– à¥¯ - à¤¨à¥à¤¯à¤¾à¤¯ à¤ªà¤°à¤¿à¤·à¤¦à¥à¤²à¥‡ à¤¸à¤°à¥à¤µà¥‹à¤šà¥à¤šà¤®à¤¾ à¤¸à¥à¤¥à¤¾à¤¯à¥€ à¤¨à¥à¤¯à¤¾à¤¯à¤¾à¤§à¥€à¤¶ à¤¨à¤¿à¤¯à¥à¤•à¥à¤¤à¤¿à¤•à¥‹ à¤²à¤¾à¤—à¤¿ à¥® à¤œà¤¨à¤¾à¤•à¥‹ à¤¨à¤¾à¤® à¤¸à¤‚à¤¸à¤¦à¥€à¤¯ à¤¸à¥à¤¨à¥à¤µà¤¾à¤ˆà¤•à¥‹ à¤²à¤¾à¤—à¤¿ à¤¸à¤¿à¤«à¤¾à¤°à¤¿à¤¸ à¤—à¤°à¥‡à¤•à¥‹ à¤› à¥¤ à¤¸à¤‚à¤µà¤¿à¤§à¤¾à¤¨à¤…à¤¨à¥à¤¸à¤¾à¤° à¤®à¥à¤¦à¥à¤¦à¤¾à¤•à¥‹ à¤šà¤¾à¤ª à¤¹à¥‡à¤°à¥€ à¥§à¥« à¤¸à¥à¤¥à¤¾à¤¯à¥€ à¤° à¥§à¥¦ à¤¸à¤®à¥à¤® à¤…à¤¸à¥à¤¥à¤¾à¤¯à¥€ à¤¨à¥à¤¯à¤¾à¤¯à¤¾à¤§à¥€à¤¶à¤•à¥‹ à¤¦à¤°à¤¬à¤¨à¥à¤¦à¥€ à¤ªà¤¾à¤à¤•à¥‹ à¤¸à¤°à¥à¤µà¥‹à¤šà¥à¤šà¤®à¤¾ à¥© à¤µà¤°à¥à¤·à¤¦à¥‡à¤–à¤¿ à¤¸à¥à¤¥à¤¾à¤¯à¥€ à¤¨à¥à¤¯à¤¾à¤¯à¤¾à¤§à¥€à¤¶ à¤¨à¤¿à¤¯à¥à¤•à¥à¤¤à¤¿ à¤­à¤à¤•à¥‹ à¤¥à¤¿à¤à¤¨à¥ à¥¤', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news_category_prabash`
--

CREATE TABLE IF NOT EXISTS `news_category_prabash` (
  `catid` int(4) NOT NULL AUTO_INCREMENT,
  `catname` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `catdesc` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`catid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `news_category_prabash`
--

INSERT INTO `news_category_prabash` (`catid`, `catname`, `catdesc`, `image`, `status`) VALUES
(8, 'Maoist vela ', 'asdmfsdkm dsfkjds k', '', 1),
(9, 'Oli Bankok', 'skdjfsd dskjdf dkjd dkjdf dfkj d jdfkj djdf kjdf dkjf kjdf kjdf jdfk dfjdkfj ', '', 1),
(11, 'fdg', 'dfgdfgdfgf', '', 1),
(12, 'dsfds', 'fdsfdssd', 'image', 1),
(13, 'Information Technology', 'all about the inforamtion technology', 'Jellyfish.jpg', 1),
(28, 'à¤¸à¤°à¥à¤µà¥‹à¤šà¥à¤šà¤•à¥‹ à¤¨à¥à¤¯à¤¾à¤¯à¤¾à¤§à¥€à¤¶à¤•à¥‹ à¤²à¤¾à¤—à¤¿ à¥® à¤¨à¤¾à¤® à¤¸à¤¿à¤«à¤¾à¤°à¤¿à¤¸', 'à¤•à¤¾à¤ à¤®à¤¾à¤¡à¥Œ , à¤µà¥ˆà¤¶à¤¾à¤– à¥¯ - à¤¨à¥à¤¯à¤¾à¤¯ à¤ªà¤°à¤¿à¤·à¤¦à¥à¤²à¥‡ à¤¸à¤°à¥à¤µà¥‹à¤šà¥à¤šà¤®à¤¾ à¤¸à¥à¤¥à¤¾à¤¯à¥€ à¤¨à¥à¤¯à¤¾à¤¯à¤¾à¤§à¥€à¤¶ à¤¨à¤¿à¤¯à¥à¤•à¥à¤¤à¤¿à¤•à¥‹ à¤²à¤¾à¤—à¤¿ à¥® à¤œà¤¨à¤¾à¤•à¥‹ à¤¨à¤¾à¤® à¤¸à¤‚à¤¸à¤¦à¥€à¤¯ à¤¸à¥à¤¨à¥à¤µà¤¾à¤ˆà¤•à¥‹ à¤²à¤¾à¤—à¤¿ à¤¸à¤¿à¤«à¤¾à¤°à¤¿à¤¸ à¤—à¤°à¥‡à¤•à¥‹ à¤› à¥¤ à¤¸à¤‚à¤µà¤¿à¤§à¤¾à¤¨à¤…à¤¨à¥à¤¸à¤¾à¤° à¤®à¥à¤¦à¥à¤¦à¤¾à¤•à¥‹ à¤šà¤¾à¤ª à¤¹à¥‡à¤°à¥€ à¥§à¥« à¤¸à¥à¤¥à¤¾à¤¯à¥€ à¤° à¥§à¥¦ à¤¸à¤®à¥à¤® à¤…à¤¸à¥à¤¥à¤¾à¤¯à¥€ à¤¨à¥à¤¯à¤¾à¤¯à¤¾à¤§à¥€à¤¶à¤•à¥‹ à¤¦à¤°à¤¬à¤¨à¥à¤¦à¥€ à¤ªà¤¾à¤à¤•à¥‹ à¤¸à¤°à¥à¤µà¥‹à¤šà¥à¤šà¤®à¤¾ à¥© à¤µà¤°à¥à¤·à¤¦à¥‡à¤–à¤¿ à¤¸à¥à¤¥à¤¾à¤¯à¥€ à¤¨à¥à¤¯à¤¾à¤¯à¤¾à¤§à¥€à¤¶ à¤¨à¤¿à¤¯à¥à¤•à¥à¤¤à¤¿ à¤­à¤à¤•à¥‹ à¤¥à¤¿à¤à¤¨à¥ à¥¤', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news_cultural_articles`
--

CREATE TABLE IF NOT EXISTS `news_cultural_articles` (
  `aid` int(4) NOT NULL AUTO_INCREMENT,
  `atitle` varchar(255) NOT NULL,
  `adesc` text NOT NULL,
  `status` int(1) NOT NULL,
  `catid` int(4) NOT NULL,
  PRIMARY KEY (`aid`),
  KEY `catid` (`catid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `news_cultural_articles`
--

INSERT INTO `news_cultural_articles` (`aid`, `atitle`, `adesc`, `status`, `catid`) VALUES
(32, 'Prachanda Agenda', 'skdjfklsdj sadkjf s', 1, 8),
(33, 'nature', 'abourlkjfjjkdkjjdskjdjsk\r\n\r\nthis is all about the nature', 1, 8),
(36, 'To be continue', ' slkdjfsd sdkjfsd dkjdsf kd kjdf djkdf kd dkdjdkd dkjf dkjf fjd kdjf dkjdfkj ', 1, 9);

-- --------------------------------------------------------

--
-- Table structure for table `news_entertainment_articles`
--

CREATE TABLE IF NOT EXISTS `news_entertainment_articles` (
  `aid` int(4) NOT NULL AUTO_INCREMENT,
  `atitle` varchar(255) NOT NULL,
  `adesc` text NOT NULL,
  `status` int(1) NOT NULL,
  `catid` int(4) NOT NULL,
  PRIMARY KEY (`aid`),
  KEY `catid` (`catid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `news_entertainment_articles`
--

INSERT INTO `news_entertainment_articles` (`aid`, `atitle`, `adesc`, `status`, `catid`) VALUES
(32, 'Prachanda Agenda', 'skdjfklsdj sadkjf s', 1, 8),
(33, 'nature', 'abourlkjfjjkdkjjdskjdjsk\r\n\r\nthis is all about the nature', 1, 8),
(36, 'To be continue', ' slkdjfsd sdkjfsd dkjdsf kd kjdf djkdf kd dkdjdkd dkjf dkjf fjd kdjf dkjdfkj ', 1, 9);

-- --------------------------------------------------------

--
-- Table structure for table `news_gallery`
--

CREATE TABLE IF NOT EXISTS `news_gallery` (
  `gid` int(4) NOT NULL AUTO_INCREMENT,
  `imgname` varchar(255) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `location` enum('h','p') NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=42 ;

--
-- Dumping data for table `news_gallery`
--

INSERT INTO `news_gallery` (`gid`, `imgname`, `caption`, `location`, `status`) VALUES
(14, 'img1.jpg', 'nirmala', 'p', 0),
(17, 'Penguins.jpg', '323', 'p', 1),
(18, 'img2.jpg', 'cc', 'h', 0),
(19, 'img3.jpg', 'manisha', 'h', 0),
(20, 'img4.jpg', 'ganesh', 'h', 1),
(22, 'DSC02110.JPG', 'f', 'p', 1),
(24, '4.jpg', 'p', 'p', 1),
(25, 'DSC01772.JPG', 'cc', 'p', 1),
(26, 'DSC01042.jpg', 'cf', 'p', 1),
(27, 'DSC01977.JPG', 'fdf', 'p', 0),
(28, 'select.jpg', 'rrrtr', 'p', 1),
(29, 'DSC01992.JPG', 'fdffd', 'p', 1),
(30, 'DSC01972.JPG', 's', 'p', 1),
(31, 'DSC02067.JPG', 'fq', 'p', 1),
(33, 'DSC01737.JPG', 'a', 'p', 0),
(34, 'DSC01796.JPG', 'd', 'p', 1),
(35, 'DSC01775.JPG', 'p', 'p', 0),
(36, 'DSC01744.JPG', 'j', 'p', 1),
(40, 'DSC02039.JPG', 'awq', 'p', 0),
(41, 'Lighthouse.jpg', 'fg', 'h', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news_header_category`
--

CREATE TABLE IF NOT EXISTS `news_header_category` (
  `catid` int(11) NOT NULL AUTO_INCREMENT,
  `catitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `catdescription` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  PRIMARY KEY (`catid`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `news_header_category`
--

INSERT INTO `news_header_category` (`catid`, `catitle`, `catdescription`, `image`, `status`, `pid`) VALUES
(1, 'दोस्रो तामाङ फिल्म एण्ड म्यूजिक अवार्ड ः ३५ विधामा अवार्ड वितरण', 'उत्कृष्ट नायक कुमार मोक्तान, उत्कृष्ट नायिका सुकुमाया मोक्तान\r\nकाठमाडौं, वैशाख ११ – सर्वोत्कृष्ट तामाङ फिल्म, गीत, सङ्गीत र कलाकारलाई अवार्डबाट सम्मानित गरिएको छ । बिहिबार भद्रकालीस्थित आर्मी अफिसर्स क्लबमा आयोजित ‘दोस्रो तामाङ फिल्म एण्ड म्यूजिक अवार्ड २०७१’ समारोहमा विभिन्न ३५ विधामा अवार्ड वितरण गरिएको हो । \r\nतामाङ चौतारी समूह र तामाङ चलचित्र सङ्घले आयोजना गरेको अवार्ड वितरण समारोहमा गायिका इन्दिरा गोले र अभिनेत्री चाँदनी मोक्तानलाई ‘लाईफटाईम एचिभ्मेन्ट अवार्ड’ बाट अभिनन्दन गरिएको थियो । सभासद इच्छाराज तामाङले सम्मानित कलाकारद्वयलाई अभिन्दनपत्र प्रदान गर्नुभएको थियो । \r\n', '', 1, 5),
(2, 'सङ्घीय गणतान्त्रिक महिला सङ्घ, नेपालको प्रथम राष्ट्रिय सम्मेलन सम्पन्न', 'काठमाडौं, चैत २९ – संघीय गणतान्त्रिक महिला सङ्घ, नेपालको प्रथम राष्ट्रिय सम्मेलन काठमाडौंमा सम्पन्न भएको छ । सम्मेलनमा १५ जिल्लाका १५० जना प्रतिनिधि पर्यवेक्षकहरूले सहभागी जनाएका थिए । \r\nसम्मेलनको उद्घाटन गर्दै प्रमुख अतिथि परशुराम तामाङले महिलाहरू अझै विभिन्न उत्पीडनमा पर्ने गरेको हुँदा समाजमा महिला र पुरुषबीच भिन्नता रहेको बताउनुभयो । जबसम्म मनुस्मृतिमा लेखिएको कुरालाई मानिरहन्छन्, तबसम्म महिलाहरू सधैं उत्पीडनमा परिरहने बताउनुभयो । ', '', 1, 5),
(11, 'Basket Ball', 'basket ball program', '7.jpg\r\n', 1, 6),
(13, 'मिर्गाैलापीडित लामा गुरुको लागि सहयोगको याचना', '<p><!--[if gte mso 9]><xml>\r\n<w:WordDocument>\r\n<w:View>Normal</w:View>\r\n<w:Zoom>0</w:Zoom>\r\n<w:PunctuationKerning />\r\n<w:ValidateAgainstSchemas />\r\n<w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>\r\n<w:IgnoreMixedContent>false</w:IgnoreMixedContent>\r\n<w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>\r\n<w:Compatibility>\r\n<w:BreakWrappedTables />\r\n<w:SnapToGridInCell />\r\n<w:WrapTextWithPunct />\r\n<w:UseAsianBreakRules />\r\n<w:DontGrowAutofit />\r\n</w:Compatibility>\r\n<w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>\r\n</w:WordDocument>\r\n</xml><![endif]--></p>\r\n<p><!--[if gte mso 9]><xml>\r\n<w:LatentStyles DefLockedState="false" LatentStyleCount="156">\r\n</w:LatentStyles>\r\n</xml><![endif]--><!--[if gte mso 10]>\r\n<style>\r\n/* Style Definitions */\r\ntable.MsoNormalTable\r\n{mso-style-name:"Table Normal";\r\nmso-tstyle-rowband-size:0;\r\nmso-tstyle-colband-size:0;\r\nmso-style-noshow:yes;\r\nmso-style-parent:"";\r\nmso-padding-alt:0in 5.4pt 0in 5.4pt;\r\nmso-para-margin:0in;\r\nmso-para-margin-bottom:.0001pt;\r\nmso-pagination:widow-orphan;\r\nfont-size:10.0pt;\r\nfont-family:"Times New Roman";\r\nmso-ansi-language:#0400;\r\nmso-fareast-language:#0400;\r\nmso-bidi-language:#0400;}\r\n</style>\r\n<![endif]-->\r\n<p class="MsoNormal"><span style="font-family:Mangal">सन्तवीर</span> <span style="font-family:Mangal">लामा</span></p><br>\r\n<p class="MsoNormal"><span style="font-family:Mangal">धनकुटा</span>&divide;<span style="font-family:Mangal">धनकुटाको</span> <span style="font-family:Mangal">हिलेमा</span> <span style="font-family:Mangal">रहेको</span> <span style="font-family:Mangal">उर्गेन</span> <span style="font-family:Mangal">नाम्डु</span> <span style="font-family:Mangal">छयोलिङ्ग</span> <span style="font-family:Mangal">गुम्बामा</span> <span style="font-family:Mangal">कार्यरत</span> <span style="font-family:Mangal">बौद्ध</span> <span style="font-family:Mangal">लामा</span> <span style="font-family:Mangal">गुरु</span> <span style="font-family:Mangal">निरबहादुर</span> <span style="font-family:Mangal">तामाङ</span> (<span style="font-family:Mangal">निर्मल</span> <span style="font-family:Mangal">लामा</span>) <span style="font-family:Mangal">को</span> <span style="font-family:Mangal">दुवै</span> <span style="font-family:Mangal">मिर्गाैलाले</span> <span style="font-family:Mangal">काम</span> <span style="font-family:Mangal">नगर्ने</span> <span style="font-family:Mangal">भएपछि</span> <span style="font-family:Mangal">उपचारका</span> <span style="font-family:Mangal">लागि</span> <span style="font-family:Mangal">आर्थिक</span> <span style="font-family:Mangal">अभाव</span> <span style="font-family:Mangal">भएको</span> <span style="font-family:Mangal">बताइएको</span> <span style="font-family:Mangal">छ</span> <span style="font-family:Mangal">।</span></p>\r\n<p class="MsoNormal"><span style="font-family:Mangal">जिल्लाको</span> <span style="font-family:Mangal">सान्ने</span> <span style="font-family:Mangal">गाविस</span> <span style="font-family:Mangal">वडा</span> <span style="font-family:Mangal">नंं</span>.<span style="font-family:Mangal">५</span> <span style="font-family:Mangal">मा</span> <span style="font-family:Mangal">घर</span> <span style="font-family:Mangal">भएका</span> <span style="font-family:Mangal">लामागुरु</span> <span style="font-family:Mangal">निर्मल</span> <span style="font-family:Mangal">लामा</span> <span style="font-family:Mangal">हिलेस्थित्</span> <span style="font-family:Mangal">उर्गेन</span> <span style="font-family:Mangal">नाम्डु</span> <span style="font-family:Mangal">छयोलिङ</span> <span style="font-family:Mangal">गुम्बामा</span> <span style="font-family:Mangal">३६</span> <span style="font-family:Mangal">वर्षदेखि</span> <span style="font-family:Mangal">कार्यरत</span> <span style="font-family:Mangal">रहेका</span> <span style="font-family:Mangal">छन्</span> <span style="font-family:Mangal">।</span> <span style="font-family:Mangal">उनीलाई</span> <span style="font-family:Mangal">गुम्बाका</span> <span style="font-family:Mangal">तत्कालिन</span> <span style="font-family:Mangal">प्रमुख</span> <span style="font-family:Mangal">लामागुरु</span> <span style="font-family:Mangal">स्वर्गीय</span> <span style="font-family:Mangal">छेतेन</span> <span style="font-family:Mangal">उक्याप</span> <span style="font-family:Mangal">चुल्ठे</span> <span style="font-family:Mangal">लामाले</span> <span style="font-family:Mangal">बौद्धधर्मअन्तर्गतको</span> <span style="font-family:Mangal">धर्म</span> <span style="font-family:Mangal">संस्कार</span> <span style="font-family:Mangal">संस्कृतिसम्वन्धी</span> (<span style="font-family:Mangal">डुक्डा</span>) <span style="font-family:Mangal">सम्मको</span> <span style="font-family:Mangal">ज्ञान</span> <span style="font-family:Mangal">अभिषेक</span> <span style="font-family:Mangal">गराएका</span> <span style="font-family:Mangal">थिए</span> <span style="font-family:Mangal">।</span></p>\r\n</p>', '\r\n', 1, 5),
(14, 'डा. चमला लामा सम्मानित ', 'विष्णु मोक्तान\r\nकाठमाडौं, वैशाख १८ – भर्खरै अमेरिकाबाट विद्यावारिधि (पीएचडी) हासिल गरेका डा. चमला लामालाई स्वयम्भु तामाङ समाजले सम्मान गरेको छ । वैशाख १८ गते स्वयम्भुमा आयोजित बधाई तथा सम्मान कार्यक्रममा नेपाल तामाङ घेदुङका महासचिव कुमार ब्लोनले लामालाई ताम्रापत्रबाट सम्मान गर्नुभएको थियो । \r\nडा. लामाले अमेरिकाको युनिभर्सिटी अफ ह्युस्टन टेक्सासबाट बायोलजी ९ःयभिअगबिच द्यष्ययिनथ० मा विद्यावारिधि (पीएचडी) हासिल गर्नुभएको हो । स्थायी घर ठूलोपर्सेल–८, काभ्रे भएका लामाले प्राथमिक शिक्षा गाउँकै सरकारी विद्यालयबाट पूरा गर्नुभएको थियो । उहाँले काठमाडौंको कन्या माविबाट एसएलसी उत्तीर्ण गरी पद्मकन्या क्याम्पसबाट बायोलजीमा आईएससी, त्रिचन्द्र कलेजबाट बीएससी. र सन् २००४ मा त्रिभुवन विश्वविद्यालयबाट माईक्रो बायोलजीमा एमएससी पूरा गर्नुभएको थियो । छात्रवृत्तिमा अध्ययनका लागि सन् २००९ जनवरीमा अमेरिका जानुभएका उहाँले ६ वर्षमा विद्यावारिधि हासिल गर्न सफल हुनुभएको हो । \r\n', '', 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `news_homepages`
--

CREATE TABLE IF NOT EXISTS `news_homepages` (
  `pid` int(4) NOT NULL AUTO_INCREMENT,
  `pagetitle` varchar(255) NOT NULL,
  `pagedesc` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `news_homepages`
--

INSERT INTO `news_homepages` (`pid`, `pagetitle`, `pagedesc`, `image`, `status`) VALUES
(27, 'Home', '', '', 1),
(28, 'News', '', '', 1),
(29, '??', '??', '', 0),
(30, '??????? , ????? ?? - ???? ???? ??????? ????? ??? ????????? ? ? ?????????? ???????? ??????? ????? ???????? ???? ????? ????????', '??????? , ????? ?? - ???? ???? ??????? ????? ??? ????????? ? ? ?????????? ???????? ??????? ????? ???????? ???? ????? ????????', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `news_home_articles1`
--

CREATE TABLE IF NOT EXISTS `news_home_articles1` (
  `aid` int(4) NOT NULL AUTO_INCREMENT,
  `atitle` varchar(255) NOT NULL,
  `adesc` text NOT NULL,
  `status` int(1) NOT NULL,
  `catid` int(4) NOT NULL,
  PRIMARY KEY (`aid`),
  KEY `catid` (`catid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `news_home_articles1`
--

INSERT INTO `news_home_articles1` (`aid`, `atitle`, `adesc`, `status`, `catid`) VALUES
(32, 'Prachanda Agenda', 'skdjfklsdj sadkjf s', 1, 8),
(33, 'nature', 'abourlkjfjjkdkjjdskjdjsk\r\n\r\nthis is all about the nature', 1, 8),
(36, 'To be continue', ' slkdjfsd sdkjfsd dkjdsf kd kjdf djkdf kd dkdjdkd dkjf dkjf fjd kdjf dkjdfkj ', 1, 9);

-- --------------------------------------------------------

--
-- Table structure for table `news_imgage_slider`
--

CREATE TABLE IF NOT EXISTS `news_imgage_slider` (
  `imgsliderid` int(4) NOT NULL AUTO_INCREMENT,
  `imgslidername` varchar(255) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `location` enum('h','p') NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`imgsliderid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `news_imgage_slider`
--

INSERT INTO `news_imgage_slider` (`imgsliderid`, `imgslidername`, `caption`, `location`, `status`) VALUES
(8, 'shelter.jpg', 'image3', 'h', 1),
(9, 'tree.jpg', 'image4', 'h', 1),
(10, 'sea.jpg', 'image5', 'h', 1),
(11, 'bridge.jpg', 'first post of image', 'h', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news_inquiry`
--

CREATE TABLE IF NOT EXISTS `news_inquiry` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `cname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `status` enum('new','junk','following','cashed') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `news_inquiry`
--

INSERT INTO `news_inquiry` (`id`, `cname`, `email`, `phone`, `message`, `status`) VALUES
(1, 'ram', 'ram@hotmail.com', '09809080', 'I want a website', 'new'),
(3, 'test', 'est', 'test', 'Please check the details of the inquiry from contact page:\r\nName: test\r\nPhone: test\r\nEmail: est\r\nMessage: test\r\n', 'following'),
(4, 'test', 'est', 'test', 'Please check the details of the inquiry from contact page:<br />Name: test<br />Phone: test<br /> Email: est<br /> Message: test<br />', 'new'),
(5, 'test', 'test', 'test', 'Please check the details of the inquiry from contact page:<br />Name: test<br />Phone: test<br /> Email: test<br /> Message: test<br />', 'junk'),
(6, 'Name...', 'Phone...', 'Email...', 'Please check the details of the inquiry from contact page:<br />Name: Name...<br />Phone: Email...<br /> Email: Phone...<br /> Message: Message...<br />', 'new');

-- --------------------------------------------------------

--
-- Table structure for table `news_interview_articles`
--

CREATE TABLE IF NOT EXISTS `news_interview_articles` (
  `aid` int(4) NOT NULL AUTO_INCREMENT,
  `atitle` varchar(255) NOT NULL,
  `adesc` text NOT NULL,
  `status` int(1) NOT NULL,
  `catid` int(4) NOT NULL,
  PRIMARY KEY (`aid`),
  KEY `catid` (`catid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `news_interview_articles`
--

INSERT INTO `news_interview_articles` (`aid`, `atitle`, `adesc`, `status`, `catid`) VALUES
(32, 'Prachanda Agenda', 'skdjfklsdj sadkjf s', 1, 8),
(33, 'nature', 'abourlkjfjjkdkjjdskjdjsk\r\n\r\nthis is all about the nature', 1, 8),
(36, 'To be continue', ' slkdjfsd sdkjfsd dkjdsf kd kjdf djkdf kd dkdjdkd dkjf dkjf fjd kdjf dkjdfkj ', 1, 9);

-- --------------------------------------------------------

--
-- Table structure for table `news_pages`
--

CREATE TABLE IF NOT EXISTS `news_pages` (
  `pid` int(4) NOT NULL AUTO_INCREMENT,
  `pagetitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `pagedesc` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `image` varchar(255) CHARACTER SET latin1 NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `news_pages`
--

INSERT INTO `news_pages` (`pid`, `pagetitle`, `pagedesc`, `image`, `status`) VALUES
(27, 'à¤—à¥ƒà¤¹à¤ªà¥ƒà¤·à¥à¤ ', 'à¤•à¤¾à¤ à¤®à¤¾à¤¡à¥Œ , à¤µà¥ˆà¤¶à¤¾à¤– à¥¯ - à¤¨à¥à¤¯à¤¾à¤¯ à¤ªà¤°à¤¿à¤·à¤¦à¥à¤²à¥‡ à¤¸à¤°à¥à¤µà¥‹à¤šà¥à¤šà¤®à¤¾ à¤¸à¥à¤¥à¤¾à¤¯à¥€ à¤¨à¥à¤¯à¤¾à¤¯à¤¾à¤§à¥€à¤¶ à¤¨à¤¿à¤¯à¥à¤•à¥à¤¤à¤¿à¤•à¥‹ à¤²à¤¾à¤—à¤¿ à¥® à¤œà¤¨à¤¾à¤•à¥‹ à¤¨à¤¾à¤® à¤¸à¤‚à¤¸à¤¦à¥€à¤¯ à¤¸à¥à¤¨à¥à¤µà¤¾à¤ˆà¤•à¥‹ à¤²à¤¾à¤—à¤¿ à¤¸à¤¿à¤«à¤¾à¤°à¤¿à¤¸ à¤—à¤°à¥‡à¤•à¥‹ à¤› à¥¤ à¤¸à¤‚à¤µà¤¿à¤§à¤¾à¤¨à¤…à¤¨à¥à¤¸à¤¾à¤° à¤®à¥à¤¦à¥à¤¦à¤¾à¤•à¥‹ à¤šà¤¾à¤ª à¤¹à¥‡à¤°à¥€ à¥§à¥« à¤¸à¥à¤¥à¤¾à¤¯à¥€ à¤° à¥§à¥¦ à¤¸à¤®à¥à¤® à¤…à¤¸à¥à¤¥à¤¾à¤¯à¥€ à¤¨à¥à¤¯à¤¾à¤¯à¤¾à¤§à¥€à¤¶à¤•à¥‹ à¤¦à¤°à¤¬à¤¨à¥à¤¦à¥€ à¤ªà¤¾à¤à¤•à¥‹ à¤¸à¤°à¥à¤µà¥‹à¤šà¥à¤šà¤®à¤¾ à¥© à¤µà¤°à¥à¤·à¤¦à¥‡à¤–à¤¿ à¤¸à¥à¤¥à¤¾à¤¯à¥€ à¤¨à¥à¤¯à¤¾à¤¯à¤¾à¤§à¥€à¤¶ à¤¨à¤¿à¤¯à¥à¤•à¥à¤¤à¤¿ à¤­à¤à¤•à¥‹ à¤¥à¤¿à¤à¤¨à¥ à¥¤', '', 1),
(28, 'à¤¸à¤®à¤¾à¤šà¤¾à¤°', 'à¤•à¤¾à¤ à¤®à¤¾à¤¡à¥Œ , à¤µà¥ˆà¤¶à¤¾à¤– à¥¯ - à¤¨à¤¿à¤°à¥à¤£à¤¾à¤¯à¤•à¤°à¥‚à¤ªà¤®à¥ˆ à¤°à¤¾à¤œà¤¤à¤¨à¥à¤¤à¥à¤°à¤•à¥‹ à¤¹à¤¾à¤° à¤­à¤‡à¤¸à¤•à¥‡à¤•à¥‹ à¤¸à¥à¤µà¥€à¤•à¤¾à¤° à¤¸à¤¾à¤¯à¤¦ à¤ªà¥‚à¤°à¥à¤µà¤°à¤¾à¤œà¤¾ à¤œà¥à¤žà¤¾à¤¨à¥‡à¤¨à¥à¤¦à¥à¤°à¤²à¥‡ à¤—à¤°à¥‡à¤•à¤¾ à¤›à¥ˆà¤¨à¤¨à¥ à¥¤ à¤¤à¥à¤¯à¤¸à¥ˆà¤²à¥‡ à¤µà¥ˆà¤¶à¤¾à¤–à¤•à¥‹ à¤—à¤°à¥à¤®à¥€ à¤° à¤§à¥‚à¤ªà¤•à¥‹ à¤¸à¤®à¥‡à¤¤ à¤µà¤¾à¤¸à¥à¤¤à¤¾ à¤¨à¤—à¤°à¥€ à¤¯à¤¤à¤¿à¤¬à¥‡à¤²à¤¾ à¤ªà¥‚à¤°à¥à¤µà¥€ à¤¤à¤°à¤¾à¤ˆà¤•à¥‹ à¤­à¥à¤°à¤®à¤£à¤®à¤¾ à¤µà¥à¤¯à¤¸à¥à¤¤ à¤›à¤¨à¥ à¥¤ à¤¤à¤°, à¤°à¤¾à¤œà¤¤à¤¨à¥à¤¤à¥à¤° à¤ªà¥à¤¨à¤ƒà¤¸à¥à¤¥à¤¾à¤ªà¤¨à¤¾à¤•à¥‹ à¤®à¤¾à¤—à¤•à¤¾ à¤¸à¤¾à¤¥ à¤‰à¤¨à¤²à¤¾à¤ˆ à¤¸à¤¾à¤¥ à¤¦à¤¿à¤à¤¦à¥ˆ à¤°à¤¾à¤ªà¥à¤°à¤ªà¤¾ à¤¨à¥‡à¤ªà¤¾à¤²à¤¬à¤¾à¤Ÿ à¤šà¤¾à¤¹à¤¿à¤ à¤‰à¤¨à¤²à¥‡ à¤ªà¤¹à¤¿à¤²à¥‡à¤œà¤¸à¥à¤¤à¥‹ à¤°à¤¾à¤œà¤¨à¥€à¤¤à¤¿à¤• à¤¸à¤®à¤°à¥à¤¥à¤¨ à¤¨à¤ªà¤¾à¤‰à¤¨à¥‡ à¤¸à¤‚à¤•à¥‡à¤¤ à¤¦à¥‡à¤–à¤¿à¤à¤¦à¥ˆ à¤› à¥¤', '', 1),
(31, 'à¤ªà¥à¤°à¤µà¤¾à¤¸', 'This is a contact page in which we can contact  ?????? ', '', 1),
(33, 'à¤•à¥à¤°à¤¾à¤•à¤¾à¤¨à¥€', '', '', 1),
(34, 'à¤²à¥‡à¤– à¤µà¤¿à¤šà¤¾à¤°', '', '', 1),
(35, 'system', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news_pagess`
--

CREATE TABLE IF NOT EXISTS `news_pagess` (
  `pid` int(4) NOT NULL AUTO_INCREMENT,
  `pagetitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `pagedesc` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `news_pagess`
--


-- --------------------------------------------------------

--
-- Table structure for table `news_pages_headers`
--

CREATE TABLE IF NOT EXISTS `news_pages_headers` (
  `pid` int(4) NOT NULL AUTO_INCREMENT,
  `pagetitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `pagedesc` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `news_pages_headers`
--

INSERT INTO `news_pages_headers` (`pid`, `pagetitle`, `pagedesc`, `image`, `status`) VALUES
(5, 'समाचार', '', '\r\n', 1),
(6, 'लेख विचार', '', '\r\n', 1),
(7, 'अन्तर्वार्ता', '', '\r\n', 1),
(8, 'संस्कृति', '', '\r\n', 1),
(9, 'प्रवास', '', '\r\n', 1),
(10, 'Something', '', '\r\n', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news_prabash_articles`
--

CREATE TABLE IF NOT EXISTS `news_prabash_articles` (
  `aid` int(4) NOT NULL AUTO_INCREMENT,
  `atitle` varchar(255) NOT NULL,
  `adesc` text NOT NULL,
  `status` int(1) NOT NULL,
  `catid` int(4) NOT NULL,
  PRIMARY KEY (`aid`),
  KEY `catid` (`catid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `news_prabash_articles`
--

INSERT INTO `news_prabash_articles` (`aid`, `atitle`, `adesc`, `status`, `catid`) VALUES
(32, 'Prachanda Agenda', 'skdjfklsdj sadkjf s', 1, 8),
(33, 'nature', 'abourlkjfjjkdkjjdskjdjsk\r\n\r\nthis is all about the nature', 1, 8),
(36, 'To be continue', ' slkdjfsd sdkjfsd dkjdsf kd kjdf djkdf kd dkdjdkd dkjf dkjf fjd kdjf dkjdfkj ', 1, 9);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `news_articles`
--
ALTER TABLE `news_articles`
  ADD CONSTRAINT `news_articles_ibfk_1` FOREIGN KEY (`catid`) REFERENCES `news_header_category` (`catid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `news_home_articles1`
--
ALTER TABLE `news_home_articles1`
  ADD CONSTRAINT `news_home_articles1_ibfk_1` FOREIGN KEY (`catid`) REFERENCES `news_category` (`catid`) ON DELETE CASCADE ON UPDATE CASCADE;
