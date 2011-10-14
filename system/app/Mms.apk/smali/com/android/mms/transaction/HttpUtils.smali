.class public Lcom/android/mms/transaction/HttpUtils;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# static fields
.field private static final HDR_VALUE_ACCEPT_LANGUAGE:Ljava/lang/String;

.field private static mUserAgent:Ljava/lang/String;

.field private static mUserAgentProfile:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    invoke-static {}, Lcom/android/mms/transaction/HttpUtils;->getHttpAcceptLanguage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/HttpUtils;->HDR_VALUE_ACCEPT_LANGUAGE:Ljava/lang/String;

    .line 73
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    return-void
.end method

.method private static addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V
    .locals 3
    .parameter "builder"
    .parameter "locale"

    .prologue
    .line 417
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 419
    .local v1, language:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 420
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 424
    .local v0, country:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 425
    const-string v2, "-"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    .end local v0           #country:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static createHttpClient(Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;
    .locals 7
    .parameter "context"

    .prologue
    .line 375
    const/4 v3, 0x0

    .line 378
    .local v3, userAgent:Ljava/lang/String;
    sget-object v3, Lcom/android/mms/transaction/HttpUtils;->mUserAgent:Ljava/lang/String;

    .line 383
    invoke-static {v3, p0}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    .line 384
    .local v0, client:Landroid/net/http/AndroidHttpClient;
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    .line 385
    .local v1, params:Lorg/apache/http/params/HttpParams;
    const-string v4, "UTF-8"

    invoke-static {v1, v4}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 388
    invoke-static {}, Lcom/android/mms/MmsConfig;->getHttpSocketTimeout()I

    move-result v2

    .line 390
    .local v2, soTimeout:I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 391
    const-string v4, "Mms:transaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HttpUtils] createHttpClient w/ socket timeout "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", UA="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    :cond_0
    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 395
    return-object v0
.end method

.method private static getCurrentUSAATTUaProfUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 545
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 546
    const-string v1, "Mms:transaction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This model is :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getUSAATTUaProfUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 550
    .local v0, base:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getCurrentUserAgent()Ljava/lang/String;
    .locals 8

    .prologue
    const-string v7, "SGH-T959V"

    const-string v6, "SGH-T759"

    .line 444
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 495
    .local v2, buffer:Ljava/lang/StringBuffer;
    const-string v4, "SAMSUNG-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 498
    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 499
    .local v3, product:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 500
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 512
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getUSAATTUserAgent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 514
    .local v1, base:Ljava/lang/String;
    const/16 v4, 0x2f

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 516
    const-string v4, "gsm.version.baseband"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 517
    .local v0, VersionName:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 518
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 523
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getUSAATTUserAgent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 540
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 502
    .end local v0           #VersionName:Ljava/lang/String;
    .end local v1           #base:Ljava/lang/String;
    :cond_0
    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v5, "SGH-T959"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 503
    const-string v4, "SGH-T959VVVVV"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 504
    :cond_1
    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v5, "SGH-T959V"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 505
    const-string v4, "SGH-T959V"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 506
    :cond_2
    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v5, "SGH-T759"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 507
    const-string v4, "SGH-T759"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 509
    :cond_3
    const-string v4, "SGH-I897"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 520
    .restart local v0       #VersionName:Ljava/lang/String;
    .restart local v1       #base:Ljava/lang/String;
    :cond_4
    const-string v4, "I897UCXXX"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method private static getHttpAcceptLanguage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 403
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 404
    .local v1, locale:Ljava/util/Locale;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 406
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-static {v0, v1}, Lcom/android/mms/transaction/HttpUtils;->addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V

    .line 407
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 408
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 409
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    :cond_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, v2}, Lcom/android/mms/transaction/HttpUtils;->addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V

    .line 413
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getMmsDebugSettings(Landroid/content/Context;)V
    .locals 12
    .parameter "mcontext"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string v6, "Data in the shared preference is :"

    const-string v9, "Mms:transaction"

    .line 566
    const/4 v4, 0x0

    .line 567
    .local v4, otherAppsContext:Landroid/content/Context;
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 568
    .local v1, mmsDebugMode:Ljava/lang/Boolean;
    const/4 v2, 0x0

    .line 569
    .local v2, mmsua:Ljava/lang/String;
    const/4 v3, 0x0

    .line 572
    .local v3, mmsuap:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "com.android.MmsUaUapHander"

    const/4 v8, 0x3

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    .line 578
    const-string v6, "myPrefs"

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 581
    .local v5, prefs:Landroid/content/SharedPreferences;
    const-string v6, "mmsdebug_mode"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 582
    const-string v6, "mmsua_data"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 583
    const-string v6, "mmsuaprof_data"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 585
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 586
    const-string v6, "Mms:transaction"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Data in the shared preference is :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    const-string v6, "Mms:transaction"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Data in the shared preference is :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    const-string v6, "Mms:transaction"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Data in the shared preference is :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 597
    .end local v5           #prefs:Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-ne v11, v6, :cond_3

    .line 598
    sput-object v2, Lcom/android/mms/transaction/HttpUtils;->mUserAgent:Ljava/lang/String;

    .line 599
    sput-object v3, Lcom/android/mms/transaction/HttpUtils;->mUserAgentProfile:Ljava/lang/String;

    .line 611
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 612
    const-string v6, "Mms:transaction"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mUserAgent :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/mms/transaction/HttpUtils;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    const-string v6, "Mms:transaction"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mUserAgentProfile :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/mms/transaction/HttpUtils;->mUserAgentProfile:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    :cond_1
    return-void

    .line 590
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 591
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 592
    const-string v6, "Mms:transaction"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception is :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    :cond_2
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 601
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    invoke-static {}, Lcom/android/mms/transaction/HttpUtils;->getCurrentUserAgent()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/mms/transaction/HttpUtils;->mUserAgent:Ljava/lang/String;

    .line 603
    invoke-static {}, Lcom/android/mms/transaction/HttpUtils;->getCurrentUSAATTUaProfUrl()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/mms/transaction/HttpUtils;->mUserAgentProfile:Ljava/lang/String;

    goto :goto_1
.end method

.method private static handleHttpConnectionException(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 4
    .parameter "exception"
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 360
    const-string v1, "Mms:transaction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const/4 v0, 0x0

    .line 363
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 364
    new-instance v0, Ljava/io/IOException;

    .end local v0           #e:Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 368
    .restart local v0       #e:Ljava/io/IOException;
    :goto_0
    invoke-virtual {v0, p0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 369
    throw v0

    .line 366
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .end local v0           #e:Ljava/io/IOException;
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    .restart local v0       #e:Ljava/io/IOException;
    goto :goto_0
.end method

.method protected static httpConnection(Landroid/content/Context;JLjava/lang/String;[BIZLjava/lang/String;I)[B
    .locals 6
    .parameter "context"
    .parameter "token"
    .parameter "url"
    .parameter "pdu"
    .parameter "method"
    .parameter "isProxySet"
    .parameter "proxyHost"
    .parameter "proxyPort"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    if-nez p3, :cond_0

    .line 107
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    const-string p1, "URL must not be null."

    .end local p1
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 110
    .restart local p0
    .restart local p1
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    const-string v0, "Mms:transaction"

    const-string v1, "httpConnection: params list"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v0, "Mms:transaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\ttoken\t\t= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v0, "Mms:transaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\turl\t\t= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v0, "Mms:transaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\tmethod\t\t= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    if-ne p5, v2, :cond_3

    const-string v2, "POST"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v0, "Mms:transaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\tisProxySet\t= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v0, "Mms:transaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\tproxyHost\t= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v0, "Mms:transaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\tproxyPort\t= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_1
    const/4 v0, 0x0

    .line 127
    .local v0, client:Landroid/net/http/AndroidHttpClient;
    invoke-static {p0}, Lcom/android/mms/transaction/HttpUtils;->getMmsDebugSettings(Landroid/content/Context;)V

    .line 133
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 134
    .local v1, hostUrl:Ljava/net/URI;
    new-instance v2, Lorg/apache/http/HttpHost;

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/URI;->getPort()I

    move-result v1

    .end local v1           #hostUrl:Ljava/net/URI;
    const-string v4, "http"

    invoke-direct {v2, v3, v1, v4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 137
    .local v2, target:Lorg/apache/http/HttpHost;
    invoke-static {p0}, Lcom/android/mms/transaction/HttpUtils;->createHttpClient(Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    .line 138
    const/4 v1, 0x0

    .line 139
    .local v1, req:Lorg/apache/http/HttpRequest;
    packed-switch p5, :pswitch_data_0

    .line 153
    const-string p0, "Mms:transaction"

    .end local p0
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown HTTP method: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ". Must be one of POST["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "] or GET["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "]."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a

    .line 155
    const/4 p0, 0x0

    .line 350
    if-eqz v0, :cond_2

    .line 351
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_2
    move-object p1, p0

    move-object p0, v0

    .line 354
    .end local v0           #client:Landroid/net/http/AndroidHttpClient;
    .end local v1           #req:Lorg/apache/http/HttpRequest;
    .end local v2           #target:Lorg/apache/http/HttpHost;
    .end local p4
    .end local p5
    .end local p6
    .end local p7
    .end local p8
    .local p0, client:Landroid/net/http/AndroidHttpClient;
    :goto_1
    return-object p1

    .line 114
    .local p0, context:Landroid/content/Context;
    .restart local p1
    .restart local p4
    .restart local p5
    .restart local p6
    .restart local p7
    .restart local p8
    :cond_3
    const/4 v2, 0x2

    if-ne p5, v2, :cond_4

    const-string v2, "GET"

    goto/16 :goto_0

    :cond_4
    const-string v2, "UNKNOWN"

    goto/16 :goto_0

    .line 141
    .restart local v0       #client:Landroid/net/http/AndroidHttpClient;
    .restart local v1       #req:Lorg/apache/http/HttpRequest;
    .restart local v2       #target:Lorg/apache/http/HttpHost;
    :pswitch_0
    :try_start_1
    new-instance p5, Lcom/android/mms/transaction/ProgressCallbackEntity;

    .end local p5
    invoke-direct {p5, p0, p1, p2, p4}, Lcom/android/mms/transaction/ProgressCallbackEntity;-><init>(Landroid/content/Context;J[B)V

    .line 143
    .local p5, entity:Lcom/android/mms/transaction/ProgressCallbackEntity;
    const-string p1, "application/vnd.wap.mms-message"

    .end local p1
    invoke-virtual {p5, p1}, Lcom/android/mms/transaction/ProgressCallbackEntity;->setContentType(Ljava/lang/String;)V

    .line 145
    new-instance p1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {p1, p3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 146
    .local p1, post:Lorg/apache/http/client/methods/HttpPost;
    invoke-virtual {p1, p5}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 147
    move-object p1, p1

    .end local v1           #req:Lorg/apache/http/HttpRequest;
    .local p1, req:Lorg/apache/http/HttpRequest;
    move-object v1, p1

    .line 159
    .end local p1           #req:Lorg/apache/http/HttpRequest;
    .end local p5           #entity:Lcom/android/mms/transaction/ProgressCallbackEntity;
    .restart local v1       #req:Lorg/apache/http/HttpRequest;
    :goto_2
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object p1

    .line 160
    .local p1, params:Lorg/apache/http/params/HttpParams;
    if-eqz p6, :cond_5

    .line 161
    new-instance p2, Lorg/apache/http/HttpHost;

    invoke-direct {p2, p7, p8}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    invoke-static {p1, p2}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    .line 164
    :cond_5
    invoke-interface {v1, p1}, Lorg/apache/http/HttpRequest;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 167
    const-string p1, "Accept"

    .end local p1           #params:Lorg/apache/http/params/HttpParams;
    const-string p2, "*/*, application/vnd.wap.mms-message, application/vnd.wap.sic"

    invoke-interface {v1, p1, p2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-static {}, Lcom/android/mms/MmsConfig;->getUaProfTagName()Ljava/lang/String;

    move-result-object p1

    .line 171
    .local p1, xWapProfileTagName:Ljava/lang/String;
    const/4 p2, 0x0

    .line 174
    .local p2, xWapProfileUrl:Ljava/lang/String;
    sget-object p2, Lcom/android/mms/transaction/HttpUtils;->mUserAgentProfile:Ljava/lang/String;

    .line 180
    if-eqz p2, :cond_7

    .line 181
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result p4

    .end local p4
    if-eqz p4, :cond_6

    .line 182
    const-string p4, "Mms:transaction"

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "[HttpUtils] httpConn: xWapProfUrl="

    .end local p6
    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p4, p5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_6
    invoke-interface {v1, p1, p2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getHttpParams()Ljava/lang/String;

    move-result-object p1

    .line 196
    .local p1, extraHttpParams:Ljava/lang/String;
    if-eqz p1, :cond_a

    .line 197
    const-string p2, "phone"

    .end local p2           #xWapProfileUrl:Ljava/lang/String;
    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #context:Landroid/content/Context;
    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object p5

    .line 199
    .local p5, line1Number:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getHttpParamsLine1Key()Ljava/lang/String;

    move-result-object p4

    .line 200
    .local p4, line1Key:Ljava/lang/String;
    const-string p0, "\\|"

    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 202
    .local p0, paramList:[Ljava/lang/String;
    move-object p0, p0

    .local p0, arr$:[Ljava/lang/String;
    array-length p2, p0

    .local p2, len$:I
    const/4 p1, 0x0

    .end local p7
    .end local p8
    .local p1, i$:I
    :goto_3
    if-ge p1, p2, :cond_a

    aget-object p6, p0, p1

    .line 203
    .local p6, paramPair:Ljava/lang/String;
    const-string p7, ":"

    const/4 p8, 0x2

    invoke-virtual {p6, p7, p8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p7

    .line 205
    .local p7, splitPair:[Ljava/lang/String;
    array-length p6, p7

    .end local p6           #paramPair:Ljava/lang/String;
    const/4 p8, 0x2

    if-ne p6, p8, :cond_9

    .line 206
    const/4 p6, 0x0

    aget-object p6, p7, p6

    invoke-virtual {p6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p6

    .line 207
    .local p6, name:Ljava/lang/String;
    const/4 p8, 0x1

    aget-object p7, p7, p8

    .end local p7           #splitPair:[Ljava/lang/String;
    invoke-virtual {p7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p7

    .line 209
    .local p7, value:Ljava/lang/String;
    if-eqz p4, :cond_8

    .line 210
    invoke-virtual {p7, p4, p5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p7

    .line 212
    :cond_8
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p8

    if-nez p8, :cond_9

    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p8

    if-nez p8, :cond_9

    .line 213
    invoke-interface {v1, p6, p7}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .end local p6           #name:Ljava/lang/String;
    .end local p7           #value:Ljava/lang/String;
    :cond_9
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 150
    .end local p2           #len$:I
    .local p0, context:Landroid/content/Context;
    .local p1, token:J
    .local p4, pdu:[B
    .local p5, method:I
    .local p6, isProxySet:Z
    .local p7, proxyHost:Ljava/lang/String;
    .restart local p8
    :pswitch_1
    new-instance p1, Lorg/apache/http/client/methods/HttpGet;

    .end local p1           #token:J
    invoke-direct {p1, p3}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .end local v1           #req:Lorg/apache/http/HttpRequest;
    .local p1, req:Lorg/apache/http/HttpRequest;
    move-object v1, p1

    .line 151
    .end local p1           #req:Lorg/apache/http/HttpRequest;
    .restart local v1       #req:Lorg/apache/http/HttpRequest;
    goto/16 :goto_2

    .line 218
    .end local p0           #context:Landroid/content/Context;
    .end local p4           #pdu:[B
    .end local p5           #method:I
    .end local p6           #isProxySet:Z
    .end local p7           #proxyHost:Ljava/lang/String;
    .end local p8
    :cond_a
    const-string p0, "Accept-Language"

    sget-object p1, Lcom/android/mms/transaction/HttpUtils;->HDR_VALUE_ACCEPT_LANGUAGE:Ljava/lang/String;

    invoke-interface {v1, p0, p1}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-virtual {v0, v2, v1}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    .line 221
    .local p0, response:Lorg/apache/http/HttpResponse;
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p1

    .line 222
    .local p1, status:Lorg/apache/http/StatusLine;
    invoke-interface {p1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p2

    const/16 p4, 0xc8

    if-eq p2, p4, :cond_c

    .line 223
    new-instance p0, Ljava/io/IOException;

    .end local p0           #response:Lorg/apache/http/HttpResponse;
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "HTTP error: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-interface {p1}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object p1

    .end local p1           #status:Lorg/apache/http/StatusLine;
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a

    .line 339
    .end local v1           #req:Lorg/apache/http/HttpRequest;
    .end local v2           #target:Lorg/apache/http/HttpHost;
    :catch_0
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    .line 340
    .end local v0           #client:Landroid/net/http/AndroidHttpClient;
    .local p0, client:Landroid/net/http/AndroidHttpClient;
    .local p1, e:Ljava/net/URISyntaxException;
    :try_start_2
    invoke-static {p1, p3}, Lcom/android/mms/transaction/HttpUtils;->handleHttpConnectionException(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 350
    if-eqz p0, :cond_b

    .line 351
    invoke-virtual {p0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 354
    .end local p1           #e:Ljava/net/URISyntaxException;
    :cond_b
    :goto_4
    const/4 p1, 0x0

    goto/16 :goto_1

    .line 225
    .restart local v0       #client:Landroid/net/http/AndroidHttpClient;
    .restart local v1       #req:Lorg/apache/http/HttpRequest;
    .restart local v2       #target:Lorg/apache/http/HttpHost;
    .local p0, response:Lorg/apache/http/HttpResponse;
    .local p1, status:Lorg/apache/http/StatusLine;
    :cond_c
    :try_start_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result p1

    .end local p1           #status:Lorg/apache/http/StatusLine;
    if-eqz p1, :cond_d

    .line 226
    const-string p1, "Mms:transaction"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "[HttpUtils] http response "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :cond_d
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a

    move-result-object p6

    .line 231
    .local p6, entity:Lorg/apache/http/HttpEntity;
    const/4 p0, 0x0

    .line 232
    .local p0, body:[B
    if-eqz p6, :cond_f

    .line 240
    :try_start_4
    invoke-interface {p6}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object p1

    .line 241
    .local p1, contentEnc:Lorg/apache/http/Header;
    if-eqz p1, :cond_e

    .line 242
    const/4 p2, 0x0

    .line 243
    .local p2, encoding:Ljava/lang/String;
    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object p1

    .line 244
    .end local p2           #encoding:Ljava/lang/String;
    .local p1, encoding:Ljava/lang/String;
    const-string p2, "Mms:transaction"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "httpConnection: content encoding is: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #encoding:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_e
    invoke-interface {p6}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide p1

    const-wide/16 p4, 0x0

    cmp-long p1, p1, p4

    if-lez p1, :cond_12

    .line 248
    invoke-interface {p6}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide p1

    long-to-int p1, p1

    new-array p0, p1, [B

    .line 249
    new-instance p1, Ljava/io/DataInputStream;

    invoke-interface {p6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 251
    .local p1, dis:Ljava/io/DataInputStream;
    :try_start_5
    invoke-virtual {p1, p0}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 254
    :try_start_6
    invoke-virtual {p1}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 333
    .end local v1           #req:Lorg/apache/http/HttpRequest;
    .end local v2           #target:Lorg/apache/http/HttpHost;
    .end local p1           #dis:Ljava/io/DataInputStream;
    :goto_5
    if-eqz p6, :cond_f

    .line 334
    :try_start_7
    invoke-interface {p6}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5
    .catch Ljava/net/URISyntaxException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_a

    .line 350
    :cond_f
    if-eqz v0, :cond_10

    .line 351
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_10
    move-object p1, p0

    move-object p0, v0

    .end local v0           #client:Landroid/net/http/AndroidHttpClient;
    .local p0, client:Landroid/net/http/AndroidHttpClient;
    goto/16 :goto_1

    .line 255
    .restart local v0       #client:Landroid/net/http/AndroidHttpClient;
    .restart local v1       #req:Lorg/apache/http/HttpRequest;
    .restart local v2       #target:Lorg/apache/http/HttpHost;
    .local p0, body:[B
    .restart local p1       #dis:Ljava/io/DataInputStream;
    :catch_1
    move-exception p1

    .line 256
    .local p1, e:Ljava/io/IOException;
    :try_start_8
    const-string p2, "Mms:transaction"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Error closing input stream: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    .end local p1           #e:Ljava/io/IOException;
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_5

    .line 333
    .end local v1           #req:Lorg/apache/http/HttpRequest;
    .end local v2           #target:Lorg/apache/http/HttpHost;
    :catchall_0
    move-exception p1

    if-eqz p6, :cond_11

    .line 334
    :try_start_9
    invoke-interface {p6}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_11
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5
    .catch Ljava/net/URISyntaxException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_a

    .line 341
    .end local p0           #body:[B
    .end local p6           #entity:Lorg/apache/http/HttpEntity;
    :catch_2
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    .line 342
    .end local v0           #client:Landroid/net/http/AndroidHttpClient;
    .local p0, client:Landroid/net/http/AndroidHttpClient;
    .local p1, e:Ljava/lang/IllegalStateException;
    :try_start_a
    invoke-static {p1, p3}, Lcom/android/mms/transaction/HttpUtils;->handleHttpConnectionException(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 350
    if-eqz p0, :cond_b

    .line 351
    invoke-virtual {p0}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_4

    .line 253
    .restart local v0       #client:Landroid/net/http/AndroidHttpClient;
    .restart local v1       #req:Lorg/apache/http/HttpRequest;
    .restart local v2       #target:Lorg/apache/http/HttpHost;
    .local p0, body:[B
    .local p1, dis:Ljava/io/DataInputStream;
    .restart local p6       #entity:Lorg/apache/http/HttpEntity;
    :catchall_1
    move-exception p2

    .line 254
    :try_start_b
    invoke-virtual {p1}, Ljava/io/DataInputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    .line 257
    .end local p1           #dis:Ljava/io/DataInputStream;
    :goto_6
    :try_start_c
    throw p2

    .line 255
    .restart local p1       #dis:Ljava/io/DataInputStream;
    :catch_3
    move-exception p1

    .line 256
    .local p1, e:Ljava/io/IOException;
    const-string p4, "Mms:transaction"

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p7, "Error closing input stream: "

    invoke-virtual {p5, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    .end local p1           #e:Ljava/io/IOException;
    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 261
    :cond_12
    invoke-interface {p6}, Lorg/apache/http/HttpEntity;->isChunked()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 263
    const p2, 0x4c400

    .line 264
    .local p2, bytesTobeRead:I
    new-array v3, p2, [B

    .line 265
    .local v3, tempBody:[B
    const-string p1, "Mms:transaction"

    const-string p4, "httpConnection: transfer encoding is chunked"

    invoke-static {p1, p4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string p1, "Mms:transaction"

    const-string p4, "httpConnection: transfer encoding is chunked"

    invoke-static {p1, p4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    new-instance p4, Ljava/io/DataInputStream;

    invoke-interface {p6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p4, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 270
    .local p4, dis:Ljava/io/DataInputStream;
    const/4 p1, 0x0

    .line 271
    .local p1, bytesRead:I
    const/4 p5, 0x0

    .line 272
    .local p5, offset:I
    const/4 p8, 0x1

    .local p8, readStatus:Z
    move p7, p5

    .line 275
    .end local v1           #req:Lorg/apache/http/HttpRequest;
    .end local v2           #target:Lorg/apache/http/HttpHost;
    .end local p5           #offset:I
    .local p7, offset:I
    :goto_7
    :try_start_d
    invoke-virtual {p4, v3, p7, p2}, Ljava/io/DataInputStream;->read([BII)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    move-result p1

    .line 283
    :try_start_e
    const-string p5, "Mms:transaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "httpConnection: read ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p5, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    .line 285
    if-lez p1, :cond_1b

    .line 286
    sub-int/2addr p2, p1

    .line 287
    add-int p5, p7, p1

    .line 289
    .end local p7           #offset:I
    .restart local p5       #offset:I
    :goto_8
    if-lez p1, :cond_13

    if-gtz p2, :cond_1a

    :cond_13
    move v2, p8

    .end local p8           #readStatus:Z
    .local v2, readStatus:Z
    move v1, p5

    .line 291
    .end local p5           #offset:I
    .local v1, offset:I
    :goto_9
    if-gez p1, :cond_17

    if-lez v1, :cond_17

    const/4 p5, 0x1

    if-ne v2, p5, :cond_17

    .line 294
    :try_start_f
    new-array p0, v1, [B

    .line 295
    const/4 p5, 0x0

    const/4 p7, 0x0

    invoke-static {v3, p5, p0, p7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 296
    const-string p5, "Mms:transaction"

    new-instance p7, Ljava/lang/StringBuilder;

    invoke-direct {p7}, Ljava/lang/StringBuilder;-><init>()V

    const-string p8, "httpConnection: Chunked response length ["

    invoke-virtual {p7, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p7

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p8

    invoke-virtual {p7, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p7

    const-string p8, "]"

    invoke-virtual {p7, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p7

    invoke-virtual {p7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p7

    invoke-static {p5, p7}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    new-instance p5, Ljava/io/File;

    const-string p7, "/data/anr/automms.dump"

    invoke-direct {p5, p7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 300
    .local p5, file:Ljava/io/File;
    if-nez p5, :cond_15

    .line 301
    const-string p5, "Mms:transaction"

    .end local p5           #file:Ljava/io/File;
    const-string p7, "Unable to open file"

    invoke-static {p5, p7}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 321
    .end local v3           #tempBody:[B
    :cond_14
    :goto_a
    :try_start_10
    invoke-virtual {p4}, Ljava/io/DataInputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6

    .line 325
    .end local p1           #bytesRead:I
    .end local p2           #bytesTobeRead:I
    .end local p4           #dis:Ljava/io/DataInputStream;
    :goto_b
    :try_start_11
    const-string p1, "Mms:transaction"

    const-string p2, "Data input stream closed"

    invoke-static {p1, p2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_5

    .line 276
    .end local v1           #offset:I
    .end local v2           #readStatus:Z
    .restart local v3       #tempBody:[B
    .restart local p1       #bytesRead:I
    .restart local p2       #bytesTobeRead:I
    .restart local p4       #dis:Ljava/io/DataInputStream;
    .restart local p7       #offset:I
    .restart local p8       #readStatus:Z
    :catch_4
    move-exception p5

    .line 277
    .local p5, e:Ljava/io/IOException;
    const/4 p8, 0x0

    .line 278
    :try_start_12
    const-string v1, "Mms:transaction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "httpConnection: error reading input stream"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p5

    .end local p5           #e:Ljava/io/IOException;
    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {v1, p5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    move v2, p8

    .end local p8           #readStatus:Z
    .restart local v2       #readStatus:Z
    move v1, p7

    .line 281
    .end local p7           #offset:I
    .restart local v1       #offset:I
    goto :goto_9

    .line 303
    .local p5, file:Ljava/io/File;
    :cond_15
    const/4 p7, 0x0

    .line 305
    .local p7, fout:Ljava/io/FileOutputStream;
    :try_start_13
    new-instance p8, Ljava/io/FileOutputStream;

    const/4 v3, 0x0

    invoke-direct {p8, p5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_5

    .line 306
    .end local v3           #tempBody:[B
    .end local p7           #fout:Ljava/io/FileOutputStream;
    .local p8, fout:Ljava/io/FileOutputStream;
    :try_start_14
    invoke-virtual {p8, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_b

    .line 310
    if-eqz p8, :cond_14

    .line 311
    :try_start_15
    invoke-virtual {p8}, Ljava/io/FileOutputStream;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    goto :goto_a

    .line 320
    .end local p5           #file:Ljava/io/File;
    .end local p8           #fout:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception p5

    move-object p8, p5

    move p7, v2

    .end local v2           #readStatus:Z
    .local p7, readStatus:Z
    move p5, v1

    .line 321
    .end local v1           #offset:I
    .local p5, offset:I
    :goto_c
    :try_start_16
    invoke-virtual {p4}, Ljava/io/DataInputStream;->close()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_7

    .line 325
    .end local p1           #bytesRead:I
    .end local p2           #bytesTobeRead:I
    .end local p4           #dis:Ljava/io/DataInputStream;
    .end local p5           #offset:I
    :goto_d
    :try_start_17
    const-string p1, "Mms:transaction"

    const-string p2, "Data input stream closed"

    invoke-static {p1, p2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    throw p8
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 307
    .restart local v1       #offset:I
    .restart local v2       #readStatus:Z
    .restart local p1       #bytesRead:I
    .restart local p2       #bytesTobeRead:I
    .restart local p4       #dis:Ljava/io/DataInputStream;
    .local p5, file:Ljava/io/File;
    .local p7, fout:Ljava/io/FileOutputStream;
    :catch_5
    move-exception p5

    .line 308
    .local p5, e:Ljava/lang/Exception;
    :goto_e
    :try_start_18
    const-string p5, "Mms:transaction"

    .end local p5           #e:Ljava/lang/Exception;
    const-string p8, "httpConnection: File operation exception"

    invoke-static {p5, p8}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    .line 310
    if-eqz p7, :cond_14

    .line 311
    :try_start_19
    invoke-virtual {p7}, Ljava/io/FileOutputStream;->close()V

    goto :goto_a

    .line 310
    :catchall_3
    move-exception p5

    move-object v5, p5

    move-object p5, p7

    .end local p7           #fout:Ljava/io/FileOutputStream;
    .local p5, fout:Ljava/io/FileOutputStream;
    move-object p7, v5

    :goto_f
    if-eqz p5, :cond_16

    .line 311
    invoke-virtual {p5}, Ljava/io/FileOutputStream;->close()V

    :cond_16
    throw p7
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    .line 316
    .end local p5           #fout:Ljava/io/FileOutputStream;
    .restart local v3       #tempBody:[B
    :cond_17
    :try_start_1a
    const-string p5, "Mms:transaction"

    const-string p7, "httpConnection: transfer encoding. Response entity too large or empty. Bigger than 305 K"

    invoke-static {p5, p7}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4

    goto :goto_a

    .line 320
    :catchall_4
    move-exception p5

    move-object p8, p5

    move p7, v2

    .end local v2           #readStatus:Z
    .local p7, readStatus:Z
    move p5, v1

    .end local v1           #offset:I
    .local p5, offset:I
    goto :goto_c

    .line 322
    .end local v3           #tempBody:[B
    .end local p5           #offset:I
    .end local p7           #readStatus:Z
    .restart local v1       #offset:I
    .restart local v2       #readStatus:Z
    :catch_6
    move-exception p1

    .line 323
    .local p1, e:Ljava/io/IOException;
    :try_start_1b
    const-string p2, "Mms:transaction"

    .end local p2           #bytesTobeRead:I
    new-instance p4, Ljava/lang/StringBuilder;

    .end local p4           #dis:Ljava/io/DataInputStream;
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Error closing input stream: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    .end local p1           #e:Ljava/io/IOException;
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 322
    .end local v1           #offset:I
    .end local v2           #readStatus:Z
    .local p1, bytesRead:I
    .restart local p2       #bytesTobeRead:I
    .restart local p4       #dis:Ljava/io/DataInputStream;
    .restart local p5       #offset:I
    .restart local p7       #readStatus:Z
    :catch_7
    move-exception p1

    .line 323
    .local p1, e:Ljava/io/IOException;
    const-string p2, "Mms:transaction"

    .end local p2           #bytesTobeRead:I
    new-instance p4, Ljava/lang/StringBuilder;

    .end local p4           #dis:Ljava/io/DataInputStream;
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Error closing input stream: "

    .end local p5           #offset:I
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    .end local p1           #e:Ljava/io/IOException;
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 328
    .end local p7           #readStatus:Z
    .local v1, req:Lorg/apache/http/HttpRequest;
    .local v2, target:Lorg/apache/http/HttpHost;
    :cond_18
    const-string p1, "Mms:transaction"

    const-string p2, "httpConnection: Error - No content length and no chunked transfer"

    invoke-static {p1, p2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    goto/16 :goto_5

    .line 343
    .end local v1           #req:Lorg/apache/http/HttpRequest;
    .end local v2           #target:Lorg/apache/http/HttpHost;
    .end local p0           #body:[B
    .end local p6           #entity:Lorg/apache/http/HttpEntity;
    :catch_8
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    .line 344
    .end local v0           #client:Landroid/net/http/AndroidHttpClient;
    .local p0, client:Landroid/net/http/AndroidHttpClient;
    .local p1, e:Ljava/lang/IllegalArgumentException;
    :try_start_1c
    invoke-static {p1, p3}, Lcom/android/mms/transaction/HttpUtils;->handleHttpConnectionException(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_6

    .line 350
    if-eqz p0, :cond_b

    .line 351
    invoke-virtual {p0}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_4

    .line 345
    .end local p0           #client:Landroid/net/http/AndroidHttpClient;
    .end local p1           #e:Ljava/lang/IllegalArgumentException;
    .restart local v0       #client:Landroid/net/http/AndroidHttpClient;
    :catch_9
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    .line 346
    .end local v0           #client:Landroid/net/http/AndroidHttpClient;
    .restart local p0       #client:Landroid/net/http/AndroidHttpClient;
    .local p1, e:Ljava/net/SocketException;
    :try_start_1d
    invoke-static {p1, p3}, Lcom/android/mms/transaction/HttpUtils;->handleHttpConnectionException(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_6

    .line 350
    if-eqz p0, :cond_b

    .line 351
    invoke-virtual {p0}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_4

    .line 347
    .end local p0           #client:Landroid/net/http/AndroidHttpClient;
    .end local p1           #e:Ljava/net/SocketException;
    .restart local v0       #client:Landroid/net/http/AndroidHttpClient;
    :catch_a
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    .line 348
    .end local v0           #client:Landroid/net/http/AndroidHttpClient;
    .restart local p0       #client:Landroid/net/http/AndroidHttpClient;
    .local p1, e:Ljava/lang/Exception;
    :try_start_1e
    invoke-static {p1, p3}, Lcom/android/mms/transaction/HttpUtils;->handleHttpConnectionException(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_6

    .line 350
    if-eqz p0, :cond_b

    .line 351
    invoke-virtual {p0}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_4

    .line 350
    .end local p0           #client:Landroid/net/http/AndroidHttpClient;
    .end local p1           #e:Ljava/lang/Exception;
    .restart local v0       #client:Landroid/net/http/AndroidHttpClient;
    :catchall_5
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    .end local v0           #client:Landroid/net/http/AndroidHttpClient;
    .restart local p0       #client:Landroid/net/http/AndroidHttpClient;
    :goto_10
    if-eqz p0, :cond_19

    .line 351
    invoke-virtual {p0}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_19
    throw p1

    .line 350
    :catchall_6
    move-exception p1

    goto :goto_10

    .line 320
    .restart local v0       #client:Landroid/net/http/AndroidHttpClient;
    .restart local v3       #tempBody:[B
    .local p0, body:[B
    .local p1, bytesRead:I
    .restart local p2       #bytesTobeRead:I
    .restart local p4       #dis:Ljava/io/DataInputStream;
    .restart local p6       #entity:Lorg/apache/http/HttpEntity;
    .local p7, offset:I
    .local p8, readStatus:Z
    :catchall_7
    move-exception p5

    move-object v5, p5

    move p5, p7

    .end local p7           #offset:I
    .restart local p5       #offset:I
    move p7, p8

    .end local p8           #readStatus:Z
    .local p7, readStatus:Z
    move-object p8, v5

    goto/16 :goto_c

    .line 310
    .end local v3           #tempBody:[B
    .end local p7           #readStatus:Z
    .local v1, offset:I
    .local v2, readStatus:Z
    .local p5, file:Ljava/io/File;
    .local p8, fout:Ljava/io/FileOutputStream;
    :catchall_8
    move-exception p5

    move-object p7, p5

    move-object p5, p8

    .end local p8           #fout:Ljava/io/FileOutputStream;
    .local p5, fout:Ljava/io/FileOutputStream;
    goto/16 :goto_f

    .line 307
    .local p5, file:Ljava/io/File;
    .restart local p8       #fout:Ljava/io/FileOutputStream;
    :catch_b
    move-exception p5

    move-object p7, p8

    .end local p8           #fout:Ljava/io/FileOutputStream;
    .local p7, fout:Ljava/io/FileOutputStream;
    goto/16 :goto_e

    .end local v1           #offset:I
    .end local v2           #readStatus:Z
    .end local p7           #fout:Ljava/io/FileOutputStream;
    .restart local v3       #tempBody:[B
    .local p5, offset:I
    .local p8, readStatus:Z
    :cond_1a
    move p7, p5

    .end local p5           #offset:I
    .local p7, offset:I
    goto/16 :goto_7

    :cond_1b
    move p5, p7

    .end local p7           #offset:I
    .restart local p5       #offset:I
    goto/16 :goto_8

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
