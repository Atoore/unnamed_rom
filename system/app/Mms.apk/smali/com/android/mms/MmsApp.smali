.class public Lcom/android/mms/MmsApp;
.super Landroid/app/Application;
.source "MmsApp.java"


# static fields
.field private static sMmsApp:Lcom/android/mms/MmsApp;


# instance fields
.field private mRecentSuggestions:Landroid/provider/SearchRecentSuggestions;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/MmsApp;->sMmsApp:Lcom/android/mms/MmsApp;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static declared-synchronized getApplication()Lcom/android/mms/MmsApp;
    .locals 2

    .prologue
    .line 94
    const-class v0, Lcom/android/mms/MmsApp;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/mms/MmsApp;->sMmsApp:Lcom/android/mms/MmsApp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private initViewCache()V
    .locals 0

    .prologue
    .line 90
    invoke-static {}, Lcom/android/mms/ui/ComposeMessage;->init()V

    .line 91
    return-void
.end method


# virtual methods
.method public getRecentSuggestions()Landroid/provider/SearchRecentSuggestions;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mRecentSuggestions:Landroid/provider/SearchRecentSuggestions;

    return-object v0
.end method

.method public getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/android/mms/MmsApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/mms/MmsApp;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    const-string v3, "onConfigurationChanged(),newConfig="

    const-string v2, "Mms/MmsApp"

    .line 106
    const-string v0, "Mms/MmsApp"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged(),newConfig="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-static {}, Lcom/android/mms/layout/LayoutManager;->getInstance()Lcom/android/mms/layout/LayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/layout/LayoutManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 108
    const-string v0, "Mms/MmsApp"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged(),newConfig="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public onCreate()V
    .locals 6

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x1

    const-string v5, "onCreate()"

    const-string v4, "Mms/MmsApp"

    const-string v3, "com.android.mms_preferences"

    .line 52
    const-string v0, "Mms/MmsApp"

    const-string v0, "onCreate()"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 55
    sput-object p0, Lcom/android/mms/MmsApp;->sMmsApp:Lcom/android/mms/MmsApp;

    .line 58
    const-string v0, "com.android.mms_preferences"

    const v0, 0x7f050003

    invoke-static {p0, v3, v2, v0, v1}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V

    .line 60
    const-string v0, "com.android.mms_preferences"

    const/high16 v0, 0x7f05

    invoke-static {p0, v3, v2, v0, v1}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V

    .line 62
    const-string v0, "com.android.mms_preferences"

    const v0, 0x7f050001

    invoke-static {p0, v3, v2, v0, v1}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V

    .line 69
    invoke-direct {p0}, Lcom/android/mms/MmsApp;->initViewCache()V

    .line 70
    invoke-static {p0}, Lcom/android/mms/MmsConfig;->init(Landroid/content/Context;)V

    .line 71
    invoke-static {p0}, Lcom/android/mms/data/Contact;->init(Landroid/content/Context;)V

    .line 72
    invoke-static {p0}, Lcom/android/mms/util/DraftCache;->init(Landroid/content/Context;)V

    .line 75
    invoke-static {}, Lcom/android/mms/data/Conversation;->init()V

    .line 76
    invoke-static {p0}, Lcom/android/mms/ui/ConversationList;->init(Landroid/content/Context;)V

    .line 77
    invoke-static {p0}, Lcom/android/mms/util/DownloadManager;->init(Landroid/content/Context;)V

    .line 78
    invoke-static {p0}, Lcom/android/mms/util/RateController;->init(Landroid/content/Context;)V

    .line 79
    invoke-static {p0}, Lcom/android/mms/drm/DrmUtils;->cleanupStorage(Landroid/content/Context;)V

    .line 80
    invoke-static {p0}, Lcom/android/mms/layout/LayoutManager;->init(Landroid/content/Context;)V

    .line 81
    invoke-static {p0}, Lcom/android/mms/util/SmileyParser;->init(Landroid/content/Context;)V

    .line 82
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->init(Landroid/content/Context;)V

    .line 84
    invoke-static {p0}, Lcom/android/mms/Synchronizer;->doProcessing(Landroid/content/Context;)V

    .line 86
    const-string v0, "Mms/MmsApp"

    const-string v0, "onCreate()"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public onTerminate()V
    .locals 3

    .prologue
    const-string v2, "onTerminate()"

    const-string v1, "Mms/MmsApp"

    .line 99
    const-string v0, "Mms/MmsApp"

    const-string v0, "onTerminate()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-static {p0}, Lcom/android/mms/drm/DrmUtils;->cleanupStorage(Landroid/content/Context;)V

    .line 101
    const-string v0, "Mms/MmsApp"

    const-string v0, "onTerminate()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method
