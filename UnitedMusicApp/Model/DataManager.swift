//
//  DataManager.swift
//  UnitedMusicApp
//
//  Created by Aleksandr Rybachev on 27.03.2022.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    let categories = [
        "Комплекты микрофонов",
        "Наушники",
        "Микшеры для DJ",
        "Стойки, держатели, кронштейны",
        "Защита для кабелей",
        "Комплекты звукового оборудования"
    ]
    
    // Комплекты микрофонов
    let microphoneNames = [
        "AKG C414XLII/ ST",
        "Avantone Pro CDMK-4 4-Mic Drum Microphone Kit",
        "Blue Microphones Drum Kit",
        "Golden Age Project FC 4 ST"
    ]
    
    let microphoneCosts = [
        240900,
        64900,
        314600,
        20900
    ]
    
    let microphoneDescriptions = [
            """
            ПРИМЕНЕНИЕ: СТЕРЕО ЗАПИСЬ ЛЮБЫХ АКУСТИЧЕСКИХ ИНСТРУМЕНТОВ В СТУДИИ И НА СЦЕНЕ
            
            КОМПЛЕКТАЦИЯ: 2 х УНИВЕРСАЛЬНЫХ КОНДЕНСАТОРНЫХ МИКРОФОНА AKG C414XLII
            КОМПЛЕКТАЦИЯ: 2 х ПОДВЕСА ТИПА "ПАУК"
            КОМПЛЕКТАЦИЯ: 2 х КРЕПЛЕНИЯ НА СТОЙКУ
            КОМПЛЕКТАЦИЯ: 2 х ВЕТРОЗАЩИТЫ
            КОМПЛЕКТАЦИЯ: 1 х СТЕРЕО ДЕРЖАТЕЛЬ
            КОМПЛЕКТАЦИЯ: ФИРМЕННЫЙ АЛЮМИНИЕВЫЙ КЕЙС
            """,
            "1 MONDO, 1 ADM, 2 ATOM microphones",
            "Комплект из трёх микрофонов для высококачественной записи барабанной установки. Три микрофона покрывают абсолютно весь звуковой спектр звучания барабанов, тем самым позволяя получить плотное мощное звучание.",
            """
            Matched pair Small capsule condenser Microphone with pad and highpass filter
            The FC 4 ST is a matched (within 1 dB) stereo pair of two FC 4 microphones. Specs below.
            
            The FC 4 is a low cost, small capsule, true condenser microphone with transformerless discrete low noise class-A electronics. The 20 mm, 3 um gold-sputtered diaphragm has a cardioid shaped polar pattern and a great sensitivity.
            
            The characteristics of the FC 4 are ideal for many recording and live situations. It will catch the crispness of your favorite guitar, every detail of your acoustic piano, the complexity of a clean electric guitar, the raw power of distorted amps, etc.
            
            We have equipped the FC 4 with high-pass filter and pad switches. This also makes it suitable for loud sounds and even vocal recording.
            
            very musician and studio have use for a couple of FC 4s. The small capsule cardioid condenser mic is one of the most basic mics for recording. The FC 4 is truly a great sounding and very versatile microphone at a very low price!
            """
    ]
    
    let microphoneImages = [
        "AKGC4141XLIIST",
        "AvantoneProCDMK4",
        "BlueMicrophonesDrumKit",
        "GoldenAgeProjectFC4ST"
    ]
    
    // Наушники
    let headphoneNames = [
        "Audio-Technica ATH-A1000Z",
        "Audio-Technica ATH-A990Z",
        "Audio-Technica ATH-ADX5000",
        "Audio-Technica ATH-M50XWH"
    ]
    
    let headphoneCosts = [
        64900,
        35200,
        273900,
        20900
    ]
    
    let headphoneDescriptions = [
        """
        The ATH-A1000Z Art Monitor® closed-back dynamic headphones feature proprietary large-aperture 53 mm drivers to deliver exquisite Hi-Res Audio reproduction. The hand-assembled drivers include OFC-7N bobbin-wound voice coils for ultra-efficient signal transmission, a pure iron yoke for superior transient response, and a top-mounted PCB for smoother airflow that enables precise diaphragm movement.

        The housings of the ATH-A1000Z are crafted from high-rigidity aluminum and incorporate a lightweight magnesium alloy baffle to reduce unwanted resonance. The housings also feature Audio-Technica’s Double Air Damping System (D.A.D.S) for deep, natural-sounding bass reproduction. The bass is further extended by the headphones’ stitched, ergonomic earpads, which provide outstanding sound isolation along with unmatched comfort. The auto-adjusting fit of A-T’s improved 3D wing support system adds to the comfort, allowing you to listen to the headphones’ pure, high-resolution audio for hours on end. +1 Features Newly designed 53 mm drivers with OFC-7N bobbin-wound voice coils Hand-assembled drivers include top-mounted PCB and pure iron yoke, ensuring precise diaphragm movement and superior transient response High-rigidity aluminum housings Lightweight magnesium alloy baffle decreases unwanted vibration Proprietary 3D wing support system for excellent fit Stitched, ergonomic earpads offer superior comfort and sound isolation 3.0 m (9.8') OFC-6N dual-sided, four-core cable with elastomer sheath Includes 6.3 mm (¼") stereo adapter Specifications
        """,
        """
        The ATH-A990Z Art Monitor® closed-back dynamic headphones feature proprietary large-aperture 53 mm drivers with OFC bobbin-wound voice coils to deliver Hi-Res Audio reproduction. The drivers’ integrated yoke and top-mounted PCB contribute to the high-resolution performance by providing superior transient response and smoother airflow for precise diaphragm movement. The lightweight aluminum housings reduce unwanted resonance and incorporate Audio-Technica’s Double Air Damping System (D.A.D.S) for deep bass reproduction. A-T’s improved 3D wing support system ensures a great, comfortable fit, aided by the headphones’ soft, premium-grade earpads. The 3.0 m (9.8') tangle-free cable is cloth-wrapped for lasting durability. Features Newly designed 53 mm drivers with OFC bobbin-wound voice coils Drivers feature top-mounted PCB and integrated yoke for precise diaphragm movement and superior transient response Lightweight aluminum housings reduce unwanted resonance Double Air Damping System (D.A.D.S) for deep bass reproduction Proprietary 3D wing support system for excellent fit Premium, soft earpads for long-lasting comfort 3.0 m (9.8') cloth-wrapped, tangle-free cable Includes 6.3 mm (¼") stereo adapter Specifications
        """,
        """
        The ATH-ADX5000 headphones come with a detachable 3.0 m (9.8') cable with A2DC (Audio Designed Detachable Coaxial) connectors at the headphones and a 6.3 mm (1/4") gold-plated stereo plug for connecting to devices. Each pair of headphones is individually identified by a laser etched serial number and comes with a specially designed hard carrying case.
        """,
        """
        ATH-M50x разработаны для профессионального мониторинга и микширования. Наушники передают кристально чистый и детализированный звук, имеют усовершенствованные амбушюры и комплект съёмных кабелей.
        Запатентованные 45-мм драйверы на основе мощных магнитов из редкоземельного металла с катушками в медно-алюминиевой обмотке
        """
    ]
    
    let headphoneImages = [
        "AudioTechnicaATHA1000Z",
        "AudioTechnicaATHA990Z",
        "AudioTechnicaATHADX5000",
        "AudioTechnicaATHM50XWH"
    ]
    
    // Контакты
    let contactsTitle = "UNITED MUSIC - Поставщик музыкальных инструментов и оборудования, работаем в России, Беларуси, Литве и Украине. Быстрая доставка товаров по всему миру."
    let contactAdress = """
    ШОУРУМ В МОСКВЕ:
    +7 (499) 6478046
    Москва, Хохловский переулок 7-9, стр 2
    
    ШОУРУМ В МИНСКЕ:
    +375 (17) 3880432
    ПН - ПТ 10:00-19.00
    Минск, п-к Богдановича 38
    
    УКРАИНА:
    +380947120023
    
    LITHUANIA:
    +37052140628
    """
    
    private init() {}
}
