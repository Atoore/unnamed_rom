.class Lcom/android/internal/telephony/gsm/VoiceMailConstants;
.super Ljava/lang/Object;
.source "VoiceMailConstants.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field static final NAME:I = 0x0

.field static final NUMBER:I = 0x1

.field static final PARTNER_VOICEMAIL_PATH:Ljava/lang/String; = "/data/misc/radio/voicemail-conf.xml"

.field static final SIZE:I = 0x3

.field static final TAG:I = 0x2


# instance fields
.field private CarrierVmMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/VoiceMailConstants;->CarrierVmMap:Ljava/util/HashMap;

    .line 53
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/VoiceMailConstants;->loadVoiceMail()V

    .line 54
    return-void
.end method

.method private loadVoiceMail()V
    .registers 11

    .prologue
    const-string/jumbo v7, "voicemail"

    const-string v7, "Exception in Voicemail parser "

    const-string v8, "GSM"

    .line 81
    new-instance v5, Ljava/io/File;

    const-string v7, "/data/misc/radio/voicemail-conf.xml"

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    .local v5, vmFile:Ljava/io/File;
    :try_start_e
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_13} :catch_36

    .line 93
    .local v6, vmReader:Ljava/io/FileReader;
    :try_start_13
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 94
    .local v4, parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 96
    const-string/jumbo v7, "voicemail"

    invoke-static {v4, v7}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 99
    :goto_20
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 101
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, name:Ljava/lang/String;
    const-string/jumbo v7, "voicemail"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2d
    .catchall {:try_start_13 .. :try_end_2d} :catchall_b5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_2d} :catch_71
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_2d} :catch_93

    move-result v7

    if-nez v7, :cond_40

    .line 120
    if-eqz v6, :cond_35

    .line 121
    :try_start_32
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_bc

    .line 128
    .end local v2           #name:Ljava/lang/String;
    .end local v4           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v6           #vmReader:Ljava/io/FileReader;
    :cond_35
    :goto_35
    return-void

    .line 85
    :catch_36
    move-exception v7

    move-object v1, v7

    .line 86
    .local v1, e:Ljava/io/FileNotFoundException;
    const-string v7, "GSM"

    const-string v7, "Can\'t open /data/misc/radio/voicemail-conf.xml"

    invoke-static {v8, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35

    .line 106
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .restart local v2       #name:Ljava/lang/String;
    .restart local v4       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6       #vmReader:Ljava/io/FileReader;
    :cond_40
    const/4 v7, 0x3

    :try_start_41
    new-array v0, v7, [Ljava/lang/String;

    .line 107
    .local v0, data:[Ljava/lang/String;
    const/4 v7, 0x0

    const-string/jumbo v8, "numeric"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, numeric:Ljava/lang/String;
    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "carrier"

    invoke-interface {v4, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v7

    .line 109
    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string/jumbo v9, "vmnumber"

    invoke-interface {v4, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v7

    .line 110
    const/4 v7, 0x2

    const/4 v8, 0x0

    const-string/jumbo v9, "vmtag"

    invoke-interface {v4, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v7

    .line 112
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/VoiceMailConstants;->CarrierVmMap:Ljava/util/HashMap;

    invoke-virtual {v7, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_70
    .catchall {:try_start_41 .. :try_end_70} :catchall_b5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_41 .. :try_end_70} :catch_71
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_70} :catch_93

    goto :goto_20

    .line 114
    .end local v0           #data:[Ljava/lang/String;
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #numeric:Ljava/lang/String;
    .end local v4           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_71
    move-exception v7

    move-object v1, v7

    .line 115
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_73
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception in Voicemail parser "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8b
    .catchall {:try_start_73 .. :try_end_8b} :catchall_b5

    .line 120
    if-eqz v6, :cond_35

    .line 121
    :try_start_8d
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_90} :catch_91

    goto :goto_35

    .line 123
    :catch_91
    move-exception v7

    goto :goto_35

    .line 116
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_93
    move-exception v7

    move-object v1, v7

    .line 117
    .local v1, e:Ljava/io/IOException;
    :try_start_95
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception in Voicemail parser "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ad
    .catchall {:try_start_95 .. :try_end_ad} :catchall_b5

    .line 120
    if-eqz v6, :cond_35

    .line 121
    :try_start_af
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_b2
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_b2} :catch_b3

    goto :goto_35

    .line 123
    :catch_b3
    move-exception v7

    goto :goto_35

    .line 119
    .end local v1           #e:Ljava/io/IOException;
    :catchall_b5
    move-exception v7

    .line 120
    if-eqz v6, :cond_bb

    .line 121
    :try_start_b8
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_bb
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_bb} :catch_bf

    .line 125
    :cond_bb
    :goto_bb
    throw v7

    .line 123
    .restart local v2       #name:Ljava/lang/String;
    .restart local v4       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_bc
    move-exception v7

    goto/16 :goto_35

    .end local v2           #name:Ljava/lang/String;
    .end local v4           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_bf
    move-exception v8

    goto :goto_bb
.end method


# virtual methods
.method containsCarrier(Ljava/lang/String;)Z
    .registers 3
    .parameter "carrier"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/VoiceMailConstants;->CarrierVmMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method getCarrierName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "carrier"

    .prologue
    .line 61
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/VoiceMailConstants;->CarrierVmMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 62
    .local v0, data:[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1
.end method

.method getVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "carrier"

    .prologue
    .line 66
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/VoiceMailConstants;->CarrierVmMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 67
    .local v0, data:[Ljava/lang/String;
    const/4 v1, 0x1

    aget-object v1, v0, v1

    return-object v1
.end method

.method getVoiceMailTag(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "carrier"

    .prologue
    .line 71
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/VoiceMailConstants;->CarrierVmMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 72
    .local v0, data:[Ljava/lang/String;
    const/4 v1, 0x2

    aget-object v1, v0, v1

    return-object v1
.end method
