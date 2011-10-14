.class public Lcom/android/mms/util/MessagingCscSetting;
.super Ljava/lang/Object;
.source "MessagingCscSetting.java"


# static fields
.field static final CSC_KEY_BOOL:[Ljava/lang/String;

.field static final CSC_KEY_INT:[Ljava/lang/String;

.field static final CSC_KEY_STR:[Ljava/lang/String;

.field static final PREF_KEY_BOOL:[Ljava/lang/String;

.field static final PREF_KEY_INT:[Ljava/lang/String;

.field static final PREF_KEY_STR:[Ljava/lang/String;

.field private static mAutoDelete:I

.field private static mContext:Landroid/content/Context;

.field static mEditor:Landroid/content/SharedPreferences$Editor;

.field private static mEnableNotification:I

.field private static mEnablePushMesage:I

.field private static mMaxChCount:I

.field private static mMaxRecipient:I

.field private static mMmsAutoRetireve:I

.field private static mMmsAutoRetireveRoam:I

.field private static mMmsCreationMode:Ljava/lang/String;

.field private static mMmsDeliveryReport:I

.field private static mMmsReadReport:I

.field private static mMyChannels:I

.field private static mNotiVibrate:I

.field private static mPrefs:Landroid/content/SharedPreferences;

.field private static mServiceLoadingAction:Ljava/lang/String;

.field private static mSimState:Z

.field private static mSmsDeliveryReport:I

.field private static mSmsInputMethod:Ljava/lang/String;

.field private static mSmsReplyPath:I

.field private static mSmsToMmsThreshold:I

.field private static mSmsc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 59
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "csc_pref_key_sms_delivery_reports"

    aput-object v1, v0, v4

    const-string v1, "csc_pref_key_mms_delivery_reports"

    aput-object v1, v0, v5

    const-string v1, "csc_pref_key_mms_read_reports"

    aput-object v1, v0, v6

    const-string v1, "csc_pref_key_mms_auto_retrieval"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "csc_pref_key_mms_retrieval_during_roaming"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "csc_pref_key_auto_delete"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "csc_pref_key_vibrate"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "csc_pref_key_enable_notifications"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "csc_pref_key_enable_push_message"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_BOOL:[Ljava/lang/String;

    .line 71
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "pref_key_sms_delivery_reports"

    aput-object v1, v0, v4

    const-string v1, "pref_key_mms_delivery_reports"

    aput-object v1, v0, v5

    const-string v1, "pref_key_mms_read_reports"

    aput-object v1, v0, v6

    const-string v1, "pref_key_mms_auto_retrieval"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "pref_key_mms_retrieval_during_roaming"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "pref_key_auto_delete"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "pref_key_vibrate"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "pref_key_enable_notifications"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "pref_key_enable_push_message"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->PREF_KEY_BOOL:[Ljava/lang/String;

    .line 87
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "csc_pref_key_mms_creation_mode"

    aput-object v1, v0, v4

    const-string v1, "csc_pref_key_sms_input_mode"

    aput-object v1, v0, v5

    const-string v1, "csc_pref_key_service_loading_action"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_STR:[Ljava/lang/String;

    .line 95
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "pref_key_mms_creation_mode"

    aput-object v1, v0, v4

    const-string v1, "pref_key_sms_input_mode"

    aput-object v1, v0, v5

    const-string v1, "pref_key_service_loading_action"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->PREF_KEY_STR:[Ljava/lang/String;

    .line 104
    new-array v0, v4, [Ljava/lang/String;

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_INT:[Ljava/lang/String;

    .line 106
    new-array v0, v4, [Ljava/lang/String;

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->PREF_KEY_INT:[Ljava/lang/String;

    .line 109
    sput v3, Lcom/android/mms/util/MessagingCscSetting;->mSmsDeliveryReport:I

    .line 111
    sput v3, Lcom/android/mms/util/MessagingCscSetting;->mSmsReplyPath:I

    .line 113
    sput v3, Lcom/android/mms/util/MessagingCscSetting;->mMmsDeliveryReport:I

    .line 115
    sput v3, Lcom/android/mms/util/MessagingCscSetting;->mMmsReadReport:I

    .line 117
    sput v3, Lcom/android/mms/util/MessagingCscSetting;->mMmsAutoRetireve:I

    .line 119
    sput v3, Lcom/android/mms/util/MessagingCscSetting;->mMmsAutoRetireveRoam:I

    .line 121
    sput v3, Lcom/android/mms/util/MessagingCscSetting;->mAutoDelete:I

    .line 123
    sput v3, Lcom/android/mms/util/MessagingCscSetting;->mNotiVibrate:I

    .line 125
    sput v3, Lcom/android/mms/util/MessagingCscSetting;->mEnableNotification:I

    .line 127
    sput v3, Lcom/android/mms/util/MessagingCscSetting;->mSmsToMmsThreshold:I

    .line 129
    sput v3, Lcom/android/mms/util/MessagingCscSetting;->mMaxRecipient:I

    .line 131
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->mMmsCreationMode:Ljava/lang/String;

    .line 133
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->mSmsInputMethod:Ljava/lang/String;

    .line 136
    sput v4, Lcom/android/mms/util/MessagingCscSetting;->mMaxChCount:I

    .line 138
    sput v4, Lcom/android/mms/util/MessagingCscSetting;->mMyChannels:I

    .line 142
    sput-boolean v4, Lcom/android/mms/util/MessagingCscSetting;->mSimState:Z

    .line 151
    sput v3, Lcom/android/mms/util/MessagingCscSetting;->mEnablePushMesage:I

    .line 153
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->mServiceLoadingAction:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    sput-object p1, Lcom/android/mms/util/MessagingCscSetting;->mContext:Landroid/content/Context;

    .line 159
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    .line 160
    return-void
.end method

.method public static loadCscToDefaultSettings(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "context"
    .parameter "cscKey"
    .parameter "type"

    .prologue
    const/4 v6, 0x0

    const-string v8, "csc_pref_key_threshold"

    const-string v7, "csc_pref_key_max_recipient"

    .line 308
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 309
    .local v2, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 311
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "Mms/MessagingCscSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[loadCscToDefaultSettings] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const-string v3, "STRING"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 314
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_STR:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_5

    .line 315
    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_STR:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 316
    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->PREF_KEY_STR:[Ljava/lang/String;

    aget-object v3, v3, v1

    sget-object v4, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_STR:[Ljava/lang/String;

    aget-object v4, v4, v1

    const-string v5, ""

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 314
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 318
    .end local v1           #i:I
    :cond_1
    const-string v3, "INT"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 319
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_INT:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_5

    .line 320
    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_INT:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 321
    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->PREF_KEY_INT:[Ljava/lang/String;

    aget-object v3, v3, v1

    sget-object v4, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_INT:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 319
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 323
    .end local v1           #i:I
    :cond_3
    const-string v3, "BOOLEAN"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 324
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_BOOL:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_5

    .line 325
    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_BOOL:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 326
    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->PREF_KEY_BOOL:[Ljava/lang/String;

    aget-object v3, v3, v1

    sget-object v4, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_BOOL:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 324
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 330
    .end local v1           #i:I
    :cond_5
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 332
    const-string v3, "csc_pref_key_threshold"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 333
    const-string v3, "csc_pref_key_threshold"

    invoke-interface {v2, v8, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Lcom/android/mms/MmsConfig;->setSmsMmsThreshold(I)V

    .line 334
    :cond_6
    const-string v3, "csc_pref_key_max_recipient"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 335
    const-string v3, "csc_pref_key_max_recipient"

    invoke-interface {v2, v7, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Lcom/android/mms/MmsConfig;->setSmsMmsMaxRecipient(I)V

    .line 337
    :cond_7
    return-void
.end method

.method public static loadCscToDefaultSettings(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 279
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    .line 280
    sget-object v1, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sput-object v1, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 282
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_BOOL:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 283
    sget-object v1, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_BOOL:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 284
    sget-object v1, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v2, Lcom/android/mms/util/MessagingCscSetting;->PREF_KEY_BOOL:[Ljava/lang/String;

    aget-object v2, v2, v0

    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    sget-object v4, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_BOOL:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 289
    :cond_0
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_STR:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 290
    sget-object v1, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_STR:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 291
    sget-object v1, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v2, Lcom/android/mms/util/MessagingCscSetting;->PREF_KEY_STR:[Ljava/lang/String;

    aget-object v2, v2, v0

    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    sget-object v4, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_STR:[Ljava/lang/String;

    aget-object v4, v4, v0

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 296
    :cond_1
    const/4 v0, 0x0

    :goto_2
    sget-object v1, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_INT:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 297
    sget-object v1, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_INT:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 298
    sget-object v1, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v2, Lcom/android/mms/util/MessagingCscSetting;->PREF_KEY_INT:[Ljava/lang/String;

    aget-object v2, v2, v0

    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    sget-object v4, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_INT:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 303
    :cond_2
    sget-object v1, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 304
    const/4 v1, 0x1

    return v1

    .line 282
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 289
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 296
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static loadDefaultSettings()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 223
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    .line 224
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 227
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_sim_ready_status"

    sget-boolean v2, Lcom/android/mms/util/MessagingCscSetting;->mSimState:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 228
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_key_manage_smsc_address"

    sget-object v2, Lcom/android/mms/util/MessagingCscSetting;->mSmsc:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 231
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_cb_my_channel_max_count"

    sget v2, Lcom/android/mms/util/MessagingCscSetting;->mMaxChCount:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 232
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_cb_my_channel_enabled_count"

    sget v2, Lcom/android/mms/util/MessagingCscSetting;->mMyChannels:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 235
    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mSmsDeliveryReport:I

    if-ltz v0, :cond_0

    .line 236
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "csc_pref_key_sms_delivery_reports"

    sget v2, Lcom/android/mms/util/MessagingCscSetting;->mSmsDeliveryReport:I

    if-lez v2, :cond_e

    move v2, v3

    :goto_0
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 239
    :cond_0
    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mMmsDeliveryReport:I

    if-ltz v0, :cond_1

    .line 240
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "csc_pref_key_mms_delivery_reports"

    sget v2, Lcom/android/mms/util/MessagingCscSetting;->mMmsDeliveryReport:I

    if-lez v2, :cond_f

    move v2, v3

    :goto_1
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 241
    :cond_1
    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mMmsReadReport:I

    if-ltz v0, :cond_2

    .line 242
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "csc_pref_key_mms_read_reports"

    sget v2, Lcom/android/mms/util/MessagingCscSetting;->mMmsReadReport:I

    if-lez v2, :cond_10

    move v2, v3

    :goto_2
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 243
    :cond_2
    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mMmsAutoRetireve:I

    if-ltz v0, :cond_3

    .line 244
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "csc_pref_key_mms_auto_retrieval"

    sget v2, Lcom/android/mms/util/MessagingCscSetting;->mMmsAutoRetireve:I

    if-lez v2, :cond_11

    move v2, v3

    :goto_3
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 245
    :cond_3
    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mMmsAutoRetireveRoam:I

    if-ltz v0, :cond_4

    .line 246
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "csc_pref_key_mms_retrieval_during_roaming"

    sget v2, Lcom/android/mms/util/MessagingCscSetting;->mMmsAutoRetireveRoam:I

    if-lez v2, :cond_12

    move v2, v3

    :goto_4
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 247
    :cond_4
    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mAutoDelete:I

    if-ltz v0, :cond_5

    .line 248
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "csc_pref_key_auto_delete"

    sget v2, Lcom/android/mms/util/MessagingCscSetting;->mAutoDelete:I

    if-lez v2, :cond_13

    move v2, v3

    :goto_5
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 249
    :cond_5
    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mNotiVibrate:I

    if-ltz v0, :cond_6

    .line 250
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "csc_pref_key_vibrate"

    sget v2, Lcom/android/mms/util/MessagingCscSetting;->mNotiVibrate:I

    if-lez v2, :cond_14

    move v2, v3

    :goto_6
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 251
    :cond_6
    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mEnableNotification:I

    if-ltz v0, :cond_7

    .line 252
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "csc_pref_key_enable_notifications"

    sget v2, Lcom/android/mms/util/MessagingCscSetting;->mEnableNotification:I

    if-lez v2, :cond_15

    move v2, v3

    :goto_7
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 254
    :cond_7
    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mSmsToMmsThreshold:I

    if-ltz v0, :cond_8

    .line 255
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "csc_pref_key_threshold"

    sget v2, Lcom/android/mms/util/MessagingCscSetting;->mSmsToMmsThreshold:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 256
    :cond_8
    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mMaxRecipient:I

    if-ltz v0, :cond_9

    .line 257
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "csc_pref_key_max_recipient"

    sget v2, Lcom/android/mms/util/MessagingCscSetting;->mMaxRecipient:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 259
    :cond_9
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mMmsCreationMode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 260
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "csc_pref_key_mms_creation_mode"

    sget-object v2, Lcom/android/mms/util/MessagingCscSetting;->mMmsCreationMode:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 261
    :cond_a
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mSmsInputMethod:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 262
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "csc_pref_key_sms_input_mode"

    sget-object v2, Lcom/android/mms/util/MessagingCscSetting;->mSmsInputMethod:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 265
    :cond_b
    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mEnablePushMesage:I

    if-ltz v0, :cond_c

    .line 266
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "csc_pref_key_enable_push_message"

    sget v2, Lcom/android/mms/util/MessagingCscSetting;->mEnablePushMesage:I

    if-lez v2, :cond_16

    move v2, v3

    :goto_8
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 267
    :cond_c
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mServiceLoadingAction:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 268
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "csc_pref_key_service_loading_action"

    sget-object v2, Lcom/android/mms/util/MessagingCscSetting;->mServiceLoadingAction:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 271
    :cond_d
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 273
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/util/MessagingCscSetting;->loadCscToDefaultSettings(Landroid/content/Context;)Z

    .line 275
    return v3

    :cond_e
    move v2, v4

    .line 236
    goto/16 :goto_0

    :cond_f
    move v2, v4

    .line 240
    goto/16 :goto_1

    :cond_10
    move v2, v4

    .line 242
    goto/16 :goto_2

    :cond_11
    move v2, v4

    .line 244
    goto/16 :goto_3

    :cond_12
    move v2, v4

    .line 246
    goto/16 :goto_4

    :cond_13
    move v2, v4

    .line 248
    goto/16 :goto_5

    :cond_14
    move v2, v4

    .line 250
    goto/16 :goto_6

    :cond_15
    move v2, v4

    .line 252
    goto/16 :goto_7

    :cond_16
    move v2, v4

    .line 266
    goto :goto_8
.end method

.method public static storeCscSettings()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v6, "csc_pref_key_enable_notifications"

    const-string v5, "csc_pref_key_auto_delete"

    const-string v2, "csc_pref_key_sms_delivery_reports"

    .line 176
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    .line 178
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "csc_pref_key_sms_delivery_reports"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "csc_pref_key_sms_delivery_reports"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v4

    :goto_0
    sput v0, Lcom/android/mms/util/MessagingCscSetting;->mSmsDeliveryReport:I

    .line 182
    :cond_0
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "csc_pref_key_mms_delivery_reports"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "csc_pref_key_mms_delivery_reports"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v4

    :goto_1
    sput v0, Lcom/android/mms/util/MessagingCscSetting;->mMmsDeliveryReport:I

    .line 184
    :cond_1
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "csc_pref_key_mms_read_reports"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 185
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "csc_pref_key_mms_read_reports"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v4

    :goto_2
    sput v0, Lcom/android/mms/util/MessagingCscSetting;->mMmsReadReport:I

    .line 186
    :cond_2
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "csc_pref_key_mms_auto_retrieval"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 187
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "csc_pref_key_mms_auto_retrieval"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v4

    :goto_3
    sput v0, Lcom/android/mms/util/MessagingCscSetting;->mMmsAutoRetireve:I

    .line 188
    :cond_3
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "csc_pref_key_mms_retrieval_during_roaming"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 189
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "csc_pref_key_mms_retrieval_during_roaming"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v4

    :goto_4
    sput v0, Lcom/android/mms/util/MessagingCscSetting;->mMmsAutoRetireveRoam:I

    .line 190
    :cond_4
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "csc_pref_key_auto_delete"

    invoke-interface {v0, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 191
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "csc_pref_key_auto_delete"

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v4

    :goto_5
    sput v0, Lcom/android/mms/util/MessagingCscSetting;->mAutoDelete:I

    .line 192
    :cond_5
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "csc_pref_key_vibrate"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 193
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "csc_pref_key_vibrate"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_14

    move v0, v4

    :goto_6
    sput v0, Lcom/android/mms/util/MessagingCscSetting;->mNotiVibrate:I

    .line 194
    :cond_6
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "csc_pref_key_enable_notifications"

    invoke-interface {v0, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 195
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "csc_pref_key_enable_notifications"

    invoke-interface {v0, v6, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_15

    move v0, v4

    :goto_7
    sput v0, Lcom/android/mms/util/MessagingCscSetting;->mEnableNotification:I

    .line 196
    :cond_7
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "csc_pref_key_sms_delivery_reports"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 198
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "csc_pref_key_mms_creation_mode"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 199
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "csc_pref_key_mms_creation_mode"

    const-string v2, "free"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->mMmsCreationMode:Ljava/lang/String;

    .line 201
    :cond_8
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "csc_pref_key_sms_input_mode"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 202
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "csc_pref_key_sms_input_mode"

    const-string v2, "Automatic"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->mSmsInputMethod:Ljava/lang/String;

    .line 205
    :cond_9
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "csc_pref_key_threshold"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 206
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "csc_pref_key_threshold"

    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsToMmsTextThreshold()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/mms/util/MessagingCscSetting;->mSmsToMmsThreshold:I

    .line 208
    :cond_a
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "csc_pref_key_max_recipient"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 209
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "csc_pref_key_max_recipient"

    invoke-static {}, Lcom/android/mms/MmsConfig;->getRecipientLimit()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/mms/util/MessagingCscSetting;->mMaxRecipient:I

    .line 212
    :cond_b
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "csc_pref_key_enable_push_message"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 213
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "csc_pref_key_enable_push_message"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_16

    move v0, v4

    :goto_8
    sput v0, Lcom/android/mms/util/MessagingCscSetting;->mEnablePushMesage:I

    .line 214
    :cond_c
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "csc_pref_key_service_loading_action"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 215
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "csc_pref_key_service_loading_action"

    const-string v2, "pref_key_service_loading_action"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->mServiceLoadingAction:Ljava/lang/String;

    .line 219
    :cond_d
    return v4

    :cond_e
    move v0, v3

    .line 179
    goto/16 :goto_0

    :cond_f
    move v0, v3

    .line 183
    goto/16 :goto_1

    :cond_10
    move v0, v3

    .line 185
    goto/16 :goto_2

    :cond_11
    move v0, v3

    .line 187
    goto/16 :goto_3

    :cond_12
    move v0, v3

    .line 189
    goto/16 :goto_4

    :cond_13
    move v0, v3

    .line 191
    goto/16 :goto_5

    :cond_14
    move v0, v3

    .line 193
    goto/16 :goto_6

    :cond_15
    move v0, v3

    .line 195
    goto/16 :goto_7

    :cond_16
    move v0, v3

    .line 213
    goto :goto_8
.end method

.method public static storeCurrentSettings()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 163
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    .line 165
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_manage_smsc_address"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->mSmsc:Ljava/lang/String;

    .line 166
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "pref_sim_ready_status"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/mms/util/MessagingCscSetting;->mSimState:Z

    .line 169
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "pref_cb_my_channel_max_count"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/mms/util/MessagingCscSetting;->mMaxChCount:I

    .line 170
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "pref_cb_my_channel_enabled_count"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/mms/util/MessagingCscSetting;->mMyChannels:I

    .line 172
    const/4 v0, 0x1

    return v0
.end method
