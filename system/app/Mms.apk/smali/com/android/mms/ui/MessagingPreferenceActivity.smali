.class public Lcom/android/mms/ui/MessagingPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "MessagingPreferenceActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final SMSC_URI:Landroid/net/Uri;


# instance fields
.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field mMmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

.field private mMmsRecycler:Lcom/android/mms/util/Recycler;

.field private mPikcerDialog:Lcom/android/mms/ui/NumberPickerDialog;

.field private mSMSCListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mServiceLoadingActionName:[Ljava/lang/String;

.field private mServiceLoadingListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field mSmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

.field private mSmsRecycler:Lcom/android/mms/util/Recycler;

.field private reqReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 121
    const-string v0, "content://sms/smsc"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->SMSC_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 177
    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mServiceLoadingActionName:[Ljava/lang/String;

    .line 201
    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPikcerDialog:Lcom/android/mms/ui/NumberPickerDialog;

    .line 702
    new-instance v0, Lcom/android/mms/ui/MessagingPreferenceActivity$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$3;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    .line 709
    new-instance v0, Lcom/android/mms/ui/MessagingPreferenceActivity$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$4;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    .line 757
    new-instance v0, Lcom/android/mms/ui/MessagingPreferenceActivity$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$6;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSMSCListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 809
    new-instance v0, Lcom/android/mms/ui/MessagingPreferenceActivity$7;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$7;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mServiceLoadingListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method private InitPreference(Landroid/content/SharedPreferences;)V
    .locals 10
    .parameter "sharedPrefs"

    .prologue
    const-string v9, "pref_key_text_field_color"

    const-string v8, "pref_key_service_loading_action"

    const-string v7, "pref_key_font_size"

    .line 406
    const-string v6, "pref_key_font_size"

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/FontSizePreference;

    .line 407
    .local v1, fontSizePreference:Lcom/android/mms/ui/FontSizePreference;
    if-eqz v1, :cond_0

    .line 408
    const-string v6, "pref_key_font_size"

    const-string v6, "Normal"

    invoke-interface {p1, v7, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 410
    .local v0, fontSize:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getMessageFontSize(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/android/mms/ui/FontSizePreference;->setSummaryByIndex(I)V

    .line 413
    .end local v0           #fontSize:Ljava/lang/String;
    :cond_0
    const-string v6, "pref_key_text_field_color"

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/mms/ui/TextFieldColorPreference;

    .line 414
    .local v5, textFieldColorPreference:Lcom/android/mms/ui/TextFieldColorPreference;
    if-eqz v5, :cond_1

    .line 415
    const/4 v4, 0x0

    .line 417
    .local v4, textFieldColor:Ljava/lang/String;
    const-string v6, "pref_key_text_field_color"

    const-string v6, "Black"

    invoke-interface {p1, v9, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 420
    invoke-static {v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getTextFieldColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/mms/ui/TextFieldColorPreference;->setSummaryByIndex(I)V

    .line 424
    .end local v4           #textFieldColor:Ljava/lang/String;
    :cond_1
    const-string v6, "pref_key_service_loading_action"

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 425
    .local v2, serviceLoadingPreference:Landroid/preference/Preference;
    if-eqz v2, :cond_2

    .line 426
    const-string v6, "pref_key_service_loading_action"

    const-string v6, "Prompt"

    invoke-interface {p1, v8, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 428
    .local v3, slAction:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getServiceLoadingActionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 429
    iget-object v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mServiceLoadingListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 434
    .end local v3           #slAction:Ljava/lang/String;
    :cond_2
    if-eqz v5, :cond_3

    const-string v6, "GT-I9100"

    const-string v7, "SGH-I777"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 435
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 438
    :cond_3
    if-eqz v1, :cond_4

    .line 441
    :cond_4
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MessagingPreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->restoreDefaultPreferences()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MessagingPreferenceActivity;)Lcom/android/mms/util/Recycler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MessagingPreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setSmsDisplayLimit()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/ui/MessagingPreferenceActivity;)Lcom/android/mms/util/Recycler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/MessagingPreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setMmsDisplayLimit()V

    return-void
.end method

.method static synthetic access$500()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->SMSC_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/MessagingPreferenceActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getServiceLoadingActionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private clearPickerDialog()V
    .locals 1

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPikcerDialog:Lcom/android/mms/ui/NumberPickerDialog;

    if-eqz v0, :cond_0

    .line 1033
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPikcerDialog:Lcom/android/mms/ui/NumberPickerDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/NumberPickerDialog;->dismiss()V

    .line 1034
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPikcerDialog:Lcom/android/mms/ui/NumberPickerDialog;

    .line 1036
    :cond_0
    return-void
.end method

.method private confirmRestoreDialog(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 508
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 509
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f090071

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 510
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 511
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 512
    const v1, 0x7f090110

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 513
    const v1, 0x7f090111

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 514
    const v1, 0x7f090072

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 516
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 517
    return-void
.end method

.method public static convertCreationMode(Ljava/lang/String;)I
    .locals 2
    .parameter "modeName"

    .prologue
    .line 898
    const-string v0, "restricted"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 899
    const/4 v0, 0x0

    .line 903
    :goto_0
    return v0

    .line 900
    :cond_0
    const-string v0, "warning"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 901
    const/4 v0, 0x1

    goto :goto_0

    .line 902
    :cond_1
    const-string v0, "free"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 903
    const/4 v0, 0x2

    goto :goto_0

    .line 905
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown MMS creation mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getBubbleFontSize(Landroid/content/Context;)F
    .locals 5
    .parameter "context"

    .prologue
    const-string v4, "Normal"

    .line 961
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 962
    .local v1, pref:Landroid/content/SharedPreferences;
    const-string v2, "pref_key_font_size"

    const-string v3, "Normal"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 964
    .local v0, fontSize:Ljava/lang/String;
    const-string v2, "Normal"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 965
    const v2, 0x419547ae

    .line 969
    :goto_0
    return v2

    .line 966
    :cond_0
    const-string v2, "Small"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 967
    const/high16 v2, 0x4180

    goto :goto_0

    .line 969
    :cond_1
    const/high16 v2, 0x4160

    goto :goto_0
.end method

.method public static getExpiryTime(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 876
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 877
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v2, "pref_key_sms_expiry"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 878
    .local v1, tempStr:Ljava/lang/String;
    const-string v2, "0 day"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 879
    const/4 v2, 0x0

    .line 885
    :goto_0
    return v2

    .line 880
    :cond_0
    const-string v2, "1 day"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 881
    const/16 v2, 0xa7

    goto :goto_0

    .line 882
    :cond_1
    const-string v2, "2 days"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 883
    const/16 v2, 0xa8

    goto :goto_0

    .line 885
    :cond_2
    const/16 v2, 0xa9

    goto :goto_0
.end method

.method public static getInputmode(Landroid/content/Context;)I
    .locals 6
    .parameter "context"

    .prologue
    const/4 v4, 0x2

    const-string v5, "Automatic"

    .line 851
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 852
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v2, "pref_key_sms_input_mode"

    const-string v3, "Automatic"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 856
    .local v1, tempStr:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getInputModeAuto()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v4

    .line 867
    :goto_0
    return v2

    .line 860
    :cond_0
    const-string v2, "GSM alphabet"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 861
    const/4 v2, 0x0

    goto :goto_0

    .line 862
    :cond_1
    const-string v2, "Unicode"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 863
    const/4 v2, 0x1

    goto :goto_0

    .line 864
    :cond_2
    const-string v2, "Automatic"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v4

    .line 865
    goto :goto_0

    :cond_3
    move v2, v4

    .line 867
    goto :goto_0
.end method

.method public static getMessageFontSize(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 932
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 933
    .local v1, pref:Landroid/content/SharedPreferences;
    const-string v2, "pref_key_font_size"

    const-string v3, "Normal"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 935
    .local v0, fontSize:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getMessageFontSize(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method private static getMessageFontSize(Ljava/lang/String;)I
    .locals 1
    .parameter "fontSizeName"

    .prologue
    .line 950
    const-string v0, "Normal"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 951
    const/4 v0, 0x0

    .line 955
    :goto_0
    return v0

    .line 952
    :cond_0
    const-string v0, "Small"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 953
    const/4 v0, 0x1

    goto :goto_0

    .line 955
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static getServiceLoading(Ljava/lang/String;)I
    .locals 3
    .parameter "slAction"

    .prologue
    const-string v2, "Mms/MessagingPreferenceActivity"

    .line 1014
    const-string v0, "Mms/MessagingPreferenceActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PushMsg   getServiceLoading  slAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    const-string p0, "Never"

    .line 1017
    const-string v0, "Mms/MessagingPreferenceActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PushMsg   getServiceLoading for ATT set Never slAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    const-string v0, "Always"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1022
    const/4 v0, 0x0

    .line 1026
    :goto_0
    return v0

    .line 1023
    :cond_0
    const-string v0, "Prompt"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1024
    const/4 v0, 0x1

    goto :goto_0

    .line 1026
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private getServiceLoadingActionName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "slAction"

    .prologue
    const/4 v2, 0x0

    .line 1040
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mServiceLoadingActionName:[Ljava/lang/String;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v1, v2

    .line 1047
    :goto_0
    return-object v1

    .line 1043
    :cond_1
    invoke-static {p1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getServiceLoading(Ljava/lang/String;)I

    move-result v0

    .line 1044
    .local v0, index:I
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mServiceLoadingActionName:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_3

    :cond_2
    move-object v1, v2

    .line 1045
    goto :goto_0

    .line 1047
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mServiceLoadingActionName:[Ljava/lang/String;

    aget-object v1, v1, v0

    goto :goto_0
.end method

.method public static getTextFieldColor(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 985
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 986
    .local v0, pref:Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    .line 988
    .local v1, textFieldColor:Ljava/lang/String;
    const-string v2, "pref_key_text_field_color"

    const-string v3, "Black"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 991
    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getTextFieldColor(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method private static getTextFieldColor(Ljava/lang/String;)I
    .locals 1
    .parameter "textFieldColor"

    .prologue
    .line 995
    const-string v0, "White"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 996
    const/4 v0, 0x1

    .line 998
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private restoreDefaultPreferences()V
    .locals 19

    .prologue
    .line 576
    new-instance v4, Lcom/android/mms/util/MessagingCscSetting;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/mms/util/MessagingCscSetting;-><init>(Landroid/content/Context;)V

    .line 577
    .local v4, cscSetting:Lcom/android/mms/util/MessagingCscSetting;
    invoke-static {}, Lcom/android/mms/util/MessagingCscSetting;->storeCurrentSettings()Z

    .line 578
    invoke-static {}, Lcom/android/mms/util/MessagingCscSetting;->storeCscSettings()Z

    .line 580
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v14

    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 581
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 583
    invoke-static {}, Lcom/android/mms/util/MessagingCscSetting;->loadDefaultSettings()Z

    .line 585
    const v14, 0x7f050003

    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->addPreferencesFromResource(I)V

    .line 587
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 589
    .local v8, sharedPrefs:Landroid/content/SharedPreferences;
    const-string v14, "pref_key_sms_settings"

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceCategory;

    .line 591
    .local v9, smsCategory:Landroid/preference/PreferenceCategory;
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v10

    .line 597
    .local v10, smsManager:Landroid/telephony/SmsManager;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 598
    const-string v14, "pref_key_manage_smsc_address"

    const-string v15, ""

    invoke-interface {v8, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 599
    .local v13, summary_smsc:Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 600
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f09011c

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    .end local v13           #summary_smsc:Ljava/lang/String;
    check-cast v13, Ljava/lang/String;

    .line 602
    .restart local v13       #summary_smsc:Ljava/lang/String;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v14

    const-string v15, "pref_key_manage_smsc_address"

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/EditTextPreference;

    .line 604
    .local v11, smscPrefs:Landroid/preference/EditTextPreference;
    if-eqz v11, :cond_1

    .line 608
    invoke-virtual {v11, v13}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSMSCListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object v14, v0

    invoke-virtual {v11, v14}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 615
    .end local v11           #smscPrefs:Landroid/preference/EditTextPreference;
    .end local v13           #summary_smsc:Ljava/lang/String;
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 616
    const-string v14, "LanguageCount"

    const/16 v15, 0x9

    invoke-interface {v8, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 617
    .local v5, langCount:I
    const/4 v14, 0x1

    if-le v5, v14, :cond_c

    .line 618
    const-string v14, "pref_key_cb_language"

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    const v15, 0x7f09008c

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, p0

    move v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 632
    .end local v5           #langCount:I
    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/mms/MmsApp;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v14

    if-nez v14, :cond_3

    .line 634
    const-string v14, "pref_key_manage_smsc_address"

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 635
    const-string v14, "pref_key_manage_sim_messages"

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 639
    :cond_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v14

    if-nez v14, :cond_4

    .line 641
    const-string v14, "pref_key_cb_settings"

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    .line 642
    .local v3, cbOptions:Landroid/preference/PreferenceCategory;
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    invoke-virtual {v14, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 646
    .end local v3           #cbOptions:Landroid/preference/PreferenceCategory;
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getInputModeAuto()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 647
    const-string v14, "pref_key_sms_input_mode"

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 651
    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsExpiredDate()Z

    move-result v14

    if-nez v14, :cond_6

    .line 652
    const-string v14, "pref_key_sms_expiry"

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 656
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getWapPush()Z

    move-result v14

    if-nez v14, :cond_7

    .line 657
    const-string v14, "pref_key_push_message_settings"

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceCategory;

    .line 658
    .local v7, pushMsg:Landroid/preference/PreferenceCategory;
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    invoke-virtual {v14, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 664
    .end local v7           #pushMsg:Landroid/preference/PreferenceCategory;
    :cond_7
    const-string v14, "pref_key_push_message_settings"

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceCategory;

    .line 665
    .restart local v7       #pushMsg:Landroid/preference/PreferenceCategory;
    if-eqz v7, :cond_8

    .line 666
    const-string v14, "pref_key_service_loading_action"

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    invoke-virtual {v7, v14}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 676
    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v14

    if-nez v14, :cond_9

    .line 679
    const-string v14, "pref_key_mms_settings"

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    .line 680
    .local v6, mmsOptions:Landroid/preference/PreferenceCategory;
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    invoke-virtual {v14, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 682
    const-string v14, "pref_key_storage_settings"

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/PreferenceCategory;

    .line 683
    .local v12, storageOptions:Landroid/preference/PreferenceCategory;
    const-string v14, "pref_key_mms_delete_limit"

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 686
    .end local v6           #mmsOptions:Landroid/preference/PreferenceCategory;
    .end local v12           #storageOptions:Landroid/preference/PreferenceCategory;
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setSmsDisplayLimit()V

    .line 687
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 688
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setMmsDisplayLimit()V

    .line 690
    :cond_a
    move-object/from16 v0, p0

    move-object v1, v8

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->InitPreference(Landroid/content/SharedPreferences;)V

    .line 693
    invoke-static {}, Lcom/android/mms/MmsConfig;->getNetWorkLock()Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v14

    const/4 v15, 0x4

    if-ne v14, v15, :cond_b

    .line 694
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    invoke-virtual {v14, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 700
    :cond_b
    return-void

    .line 621
    .end local v7           #pushMsg:Landroid/preference/PreferenceCategory;
    .restart local v5       #langCount:I
    :cond_c
    const-string v14, "pref_key_cb_language"

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    const v15, 0x7f09008d

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, p0

    move v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private setMmsDisplayLimit()V
    .locals 5

    .prologue
    .line 480
    const-string v0, "pref_key_mms_delete_limit"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v1, 0x7f09007c

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v4, p0}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 482
    return-void
.end method

.method private setSmsDisplayLimit()V
    .locals 5

    .prologue
    .line 459
    const-string v0, "pref_key_sms_delete_limit"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v1, 0x7f09007c

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v4, p0}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 461
    return-void
.end method

.method public static useSplitView(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 915
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 916
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "pref_key_split_view"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 467
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 469
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPikcerDialog:Lcom/android/mms/ui/NumberPickerDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPikcerDialog:Lcom/android/mms/ui/NumberPickerDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/NumberPickerDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 472
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPikcerDialog:Lcom/android/mms/ui/NumberPickerDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/NumberPickerDialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 473
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPikcerDialog:Lcom/android/mms/ui/NumberPickerDialog;

    invoke-virtual {v1}, Lcom/android/mms/ui/NumberPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 477
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "icicle"

    .prologue
    const-string v9, "pref_key_push_message_settings"

    const-string v8, "pref_key_mms_settings"

    const-string v12, "SPH-D710"

    const-string v11, "SPH-D705"

    const-string v10, "SGH-I777"

    .line 207
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 208
    const v7, 0x7f050003

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/MessagingPreferenceActivity;->addPreferencesFromResource(I)V

    .line 210
    const-string v7, "pref_key_sms_settings"

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    .line 212
    .local v4, smsCategory:Landroid/preference/PreferenceCategory;
    const-string v7, "pref_key_mms_settings"

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 215
    .local v0, MmsCategory:Landroid/preference/PreferenceCategory;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v7

    if-nez v7, :cond_0

    .line 216
    const-string v7, "pref_key_manage_sim_messages"

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 219
    :cond_0
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v5

    .line 224
    .local v5, smsManager:Landroid/telephony/SmsManager;
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/MmsApp;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v7

    if-nez v7, :cond_1

    .line 226
    const-string v7, "pref_key_manage_smsc_address"

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 229
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getInputModeAuto()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 231
    const-string v7, "pref_key_sms_input_mode"

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 236
    :cond_2
    const-string v7, "pref_key_sms_delivery_reports"

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 239
    const-string v7, "pref_key_mms_delivery_reports"

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 242
    const-string v7, "pref_key_mms_read_reports"

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 249
    const-string v7, "SGH-I777"

    const-string v7, "SPH-D710"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "SGH-I777"

    const-string v7, "SPH-D705"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 250
    :cond_3
    const-string v7, "pref_key_mms_creation_mode"

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 253
    :cond_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v7

    if-nez v7, :cond_5

    .line 255
    const-string v7, "pref_key_cb_settings"

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 256
    .local v1, cbOptions:Landroid/preference/PreferenceCategory;
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 260
    .end local v1           #cbOptions:Landroid/preference/PreferenceCategory;
    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsExpiredDate()Z

    move-result v7

    if-nez v7, :cond_6

    .line 261
    const-string v7, "pref_key_sms_expiry"

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 265
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getWapPush()Z

    move-result v7

    if-nez v7, :cond_7

    .line 266
    const-string v7, "pref_key_push_message_settings"

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    .line 267
    .local v3, pushMsg:Landroid/preference/PreferenceCategory;
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 273
    .end local v3           #pushMsg:Landroid/preference/PreferenceCategory;
    :cond_7
    const-string v7, "pref_key_push_message_settings"

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    .line 274
    .restart local v3       #pushMsg:Landroid/preference/PreferenceCategory;
    if-eqz v3, :cond_8

    .line 275
    const-string v7, "pref_key_service_loading_action"

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 284
    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v7

    if-nez v7, :cond_9

    .line 286
    const-string v7, "pref_key_mms_settings"

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    .line 287
    .local v2, mmsOptions:Landroid/preference/PreferenceCategory;
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 289
    const-string v7, "pref_key_storage_settings"

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    .line 290
    .local v6, storageOptions:Landroid/preference/PreferenceCategory;
    const-string v7, "pref_key_mms_delete_limit"

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 293
    .end local v2           #mmsOptions:Landroid/preference/PreferenceCategory;
    .end local v6           #storageOptions:Landroid/preference/PreferenceCategory;
    :cond_9
    const-string v7, "input_method"

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodManager;

    iput-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 308
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    .line 309
    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    .line 312
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setSmsDisplayLimit()V

    .line 313
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 314
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setMmsDisplayLimit()V

    .line 316
    :cond_a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getNetWorkLock()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_b

    .line 317
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 321
    :cond_b
    new-instance v7, Lcom/android/mms/ui/MessagingPreferenceActivity$1;

    invoke-direct {v7, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$1;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    iput-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->reqReceiver:Landroid/content/BroadcastReceiver;

    .line 332
    iget-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->reqReceiver:Landroid/content/BroadcastReceiver;

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "android.provider.Telephony.GET_SMSC"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7, v8}, Lcom/android/mms/ui/MessagingPreferenceActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 337
    const-string v7, "SGH-I777"

    const-string v7, "SPH-D710"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    const-string v7, "SGH-I777"

    const-string v7, "SPH-D705"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 338
    :cond_c
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 344
    :cond_d
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 718
    packed-switch p1, :pswitch_data_0

    .line 735
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 720
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0900ff

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090100

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/mms/ui/MessagingPreferenceActivity$5;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$5;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 718
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 485
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 486
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 487
    const v0, 0x7f090071

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020085

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 489
    return v2
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->reqReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1083
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 1085
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 494
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 504
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 496
    :pswitch_0
    new-instance v0, Lcom/android/mms/ui/MessagingPreferenceActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$2;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->confirmRestoreDialog(Landroid/content/DialogInterface$OnClickListener;)V

    .line 502
    const/4 v0, 0x1

    goto :goto_0

    .line 494
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 448
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 450
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 454
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 523
    const-string v0, "pref_key_sms_delete_limit"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-ne p2, v0, :cond_2

    .line 524
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->clearPickerDialog()V

    .line 525
    new-instance v0, Lcom/android/mms/ui/NumberPickerDialog;

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1, p0}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v3

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1}, Lcom/android/mms/util/Recycler;->getMessageMinLimit()I

    move-result v4

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1}, Lcom/android/mms/util/Recycler;->getMessageMaxLimit()I

    move-result v5

    const v6, 0x7f090082

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/NumberPickerDialog;-><init>(Landroid/content/Context;Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;IIIILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPikcerDialog:Lcom/android/mms/ui/NumberPickerDialog;

    .line 528
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPikcerDialog:Lcom/android/mms/ui/NumberPickerDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/NumberPickerDialog;->show()V

    .line 542
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 543
    const-string v0, "pref_key_sms_delete_limit"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-ne p2, v0, :cond_1

    .line 544
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->clearPickerDialog()V

    .line 545
    new-instance v0, Lcom/android/mms/ui/NumberPickerDialog;

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1, p0}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v3

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1}, Lcom/android/mms/util/Recycler;->getMessageMinLimit()I

    move-result v4

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1}, Lcom/android/mms/util/Recycler;->getMessageMaxLimit()I

    move-result v5

    const v6, 0x7f090082

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/NumberPickerDialog;-><init>(Landroid/content/Context;Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;IIIILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPikcerDialog:Lcom/android/mms/ui/NumberPickerDialog;

    .line 548
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPikcerDialog:Lcom/android/mms/ui/NumberPickerDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/NumberPickerDialog;->show()V

    .line 571
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    :goto_2
    return v0

    .line 529
    :cond_2
    const-string v0, "pref_key_mms_delete_limit"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-ne p2, v0, :cond_3

    .line 530
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->clearPickerDialog()V

    .line 531
    new-instance v0, Lcom/android/mms/ui/NumberPickerDialog;

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1, p0}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v3

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1}, Lcom/android/mms/util/Recycler;->getMessageMinLimit()I

    move-result v4

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1}, Lcom/android/mms/util/Recycler;->getMessageMaxLimit()I

    move-result v5

    const v6, 0x7f090083

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/NumberPickerDialog;-><init>(Landroid/content/Context;Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;IIIILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPikcerDialog:Lcom/android/mms/ui/NumberPickerDialog;

    .line 534
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPikcerDialog:Lcom/android/mms/ui/NumberPickerDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/NumberPickerDialog;->show()V

    goto :goto_0

    .line 535
    :cond_3
    const-string v0, "pref_key_manage_sim_messages"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-ne p2, v0, :cond_4

    .line 536
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/ManageSimMessages;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 537
    :cond_4
    const-string v0, "pref_key_mms_clear_history"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-ne p2, v0, :cond_0

    .line 538
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->showDialog(I)V

    .line 539
    const/4 v0, 0x1

    goto :goto_2

    .line 553
    :cond_5
    const-string v0, "pref_key_sms_delete_limit"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-ne p2, v0, :cond_6

    .line 554
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->clearPickerDialog()V

    .line 555
    new-instance v0, Lcom/android/mms/ui/NumberPickerDialog;

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1, p0}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v3

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1}, Lcom/android/mms/util/Recycler;->getMessageMinLimit()I

    move-result v4

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1}, Lcom/android/mms/util/Recycler;->getMessageMaxLimit()I

    move-result v5

    const v6, 0x7f090082

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/NumberPickerDialog;-><init>(Landroid/content/Context;Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;IIIILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPikcerDialog:Lcom/android/mms/ui/NumberPickerDialog;

    .line 558
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPikcerDialog:Lcom/android/mms/ui/NumberPickerDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/NumberPickerDialog;->show()V

    goto/16 :goto_1

    .line 559
    :cond_6
    const-string v0, "pref_key_mms_delete_limit"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-ne p2, v0, :cond_7

    .line 560
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->clearPickerDialog()V

    .line 561
    new-instance v0, Lcom/android/mms/ui/NumberPickerDialog;

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1, p0}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v3

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1}, Lcom/android/mms/util/Recycler;->getMessageMinLimit()I

    move-result v4

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1}, Lcom/android/mms/util/Recycler;->getMessageMaxLimit()I

    move-result v5

    const v6, 0x7f090083

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/NumberPickerDialog;-><init>(Landroid/content/Context;Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;IIIILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPikcerDialog:Lcom/android/mms/ui/NumberPickerDialog;

    .line 564
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPikcerDialog:Lcom/android/mms/ui/NumberPickerDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/NumberPickerDialog;->show()V

    goto/16 :goto_1

    .line 565
    :cond_7
    const-string v0, "pref_key_mms_clear_history"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-ne p2, v0, :cond_1

    .line 566
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->showDialog(I)V

    .line 567
    const/4 v0, 0x1

    goto/16 :goto_2
.end method

.method protected onResume()V
    .locals 12

    .prologue
    const/4 v10, 0x1

    const-string v11, "pref_key_manage_smsc_address"

    .line 349
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 352
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 353
    const-string v7, "GATE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MessagingPreferenceActivity.onResume : android.util.GateConfig.isGateEnabled() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 358
    .local v3, sharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v4

    .line 363
    .local v4, smsManager:Landroid/telephony/SmsManager;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 365
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f09011c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 367
    .local v2, not_set:Ljava/lang/String;
    const-string v7, "pref_key_manage_smsc_address"

    invoke-interface {v3, v11, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 369
    .local v6, summary_smsc:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v7

    const-string v8, "pref_key_manage_smsc_address"

    invoke-virtual {v7, v11}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/EditTextPreference;

    .line 371
    .local v5, smscPrefs:Landroid/preference/EditTextPreference;
    if-eqz v5, :cond_1

    .line 375
    invoke-virtual {v5, v6}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 376
    iget-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSMSCListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v5, v7}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 380
    :cond_1
    const-string v7, "LanguageCount"

    const/16 v8, 0x9

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 381
    .local v1, langCount:I
    const-string v7, "pref_key_cb_language"

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 384
    .local v0, cbPreference:Landroid/preference/Preference;
    if-eqz v0, :cond_2

    .line 385
    if-eq v1, v10, :cond_4

    .line 386
    const v7, 0x7f09008c

    new-array v8, v10, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 392
    :cond_2
    :goto_0
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v7

    if-nez v7, :cond_3

    .line 393
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 401
    .end local v0           #cbPreference:Landroid/preference/Preference;
    .end local v1           #langCount:I
    .end local v2           #not_set:Ljava/lang/String;
    .end local v5           #smscPrefs:Landroid/preference/EditTextPreference;
    .end local v6           #summary_smsc:Ljava/lang/String;
    :cond_3
    invoke-direct {p0, v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->InitPreference(Landroid/content/SharedPreferences;)V

    .line 402
    return-void

    .line 389
    .restart local v0       #cbPreference:Landroid/preference/Preference;
    .restart local v1       #langCount:I
    .restart local v2       #not_set:Ljava/lang/String;
    .restart local v5       #smscPrefs:Landroid/preference/EditTextPreference;
    .restart local v6       #summary_smsc:Ljava/lang/String;
    :cond_4
    const v7, 0x7f09008d

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 5
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    const-string v4, "pref_key_mms_delivery_reports"

    const-string v3, "GATE"

    .line 824
    const-string v1, "Mms/MessagingPreferenceActivity"

    const-string v2, "[SMS] onSharedPreferenceChanged"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 827
    const-string v1, "pref_key_cb_settings_activation"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 828
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/mms/ui/ChannelUtils;->setCbSettings(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 833
    :cond_0
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 834
    const-string v1, "pref_key_mms_delivery_reports"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 835
    const-string v1, "pref_key_mms_delivery_reports"

    const/4 v1, 0x0

    invoke-interface {p1, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 837
    .local v0, dr:Z
    if-eqz v0, :cond_2

    .line 838
    const-string v1, "GATE"

    const-string v1, "<GATE-M>DELIVERY_REPORT_OFF</GATE-M>"

    invoke-static {v3, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    .end local v0           #dr:Z
    :cond_1
    :goto_0
    return-void

    .line 841
    .restart local v0       #dr:Z
    :cond_2
    const-string v1, "GATE"

    const-string v1, "<GATE-M>DELIVERY_REPORT_ON</GATE-M>"

    invoke-static {v3, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public refreshPreferences(Ljava/lang/String;)V
    .locals 7
    .parameter "Smsc"

    .prologue
    const-string v6, "pref_key_manage_smsc_address"

    .line 1054
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09011c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1055
    .local v1, not_set:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1056
    .local v2, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1058
    .local v0, editprefs:Landroid/content/SharedPreferences$Editor;
    const-string v4, "NotSet"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1060
    const-string v4, "pref_key_manage_smsc_address"

    invoke-interface {v0, v6, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1064
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1066
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v4

    const-string v5, "pref_key_manage_smsc_address"

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    .line 1068
    .local v3, smscPrefs:Landroid/preference/EditTextPreference;
    if-eqz v3, :cond_1

    .line 1070
    invoke-virtual {v3, p1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1071
    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSMSCListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1077
    :goto_1
    return-void

    .line 1062
    .end local v3           #smscPrefs:Landroid/preference/EditTextPreference;
    :cond_0
    const-string v4, "pref_key_manage_smsc_address"

    invoke-interface {v0, v6, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 1075
    .restart local v3       #smscPrefs:Landroid/preference/EditTextPreference;
    :cond_1
    const-string v4, "Mms/MessagingPreferenceActivity"

    const-string v5, "smscPrefs is Null "

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
