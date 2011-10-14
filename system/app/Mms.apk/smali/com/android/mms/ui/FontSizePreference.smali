.class public Lcom/android/mms/ui/FontSizePreference;
.super Landroid/preference/ListPreference;
.source "FontSizePreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFontListAdapter:Lcom/android/mms/ui/FontSizeAdapter;

.field private mFontSize:[Ljava/lang/String;

.field private mFontSizeName:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    iput-object v2, p0, Lcom/android/mms/ui/FontSizePreference;->mFontListAdapter:Lcom/android/mms/ui/FontSizeAdapter;

    .line 27
    iput-object v2, p0, Lcom/android/mms/ui/FontSizePreference;->mContext:Landroid/content/Context;

    .line 29
    iput-object v2, p0, Lcom/android/mms/ui/FontSizePreference;->mFontSize:[Ljava/lang/String;

    .line 31
    iput-object v2, p0, Lcom/android/mms/ui/FontSizePreference;->mFontSizeName:[Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/android/mms/ui/FontSizePreference;->mContext:Landroid/content/Context;

    .line 41
    iget-object v2, p0, Lcom/android/mms/ui/FontSizePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/FontSizePreference;->mFontSize:[Ljava/lang/String;

    .line 42
    iget-object v2, p0, Lcom/android/mms/ui/FontSizePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/FontSizePreference;->mFontSizeName:[Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v0, fontSizes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/FontSizePreference;->mFontSize:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 46
    iget-object v2, p0, Lcom/android/mms/ui/FontSizePreference;->mFontSize:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 48
    :cond_0
    new-instance v2, Lcom/android/mms/ui/FontSizeAdapter;

    invoke-direct {v2, p1, v0}, Lcom/android/mms/ui/FontSizeAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v2, p0, Lcom/android/mms/ui/FontSizePreference;->mFontListAdapter:Lcom/android/mms/ui/FontSizeAdapter;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/FontSizePreference;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/android/mms/ui/FontSizePreference;->savePreferences(I)V

    return-void
.end method

.method private savePreferences(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 52
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/FontSizePreference;->mFontSize:[Ljava/lang/String;

    array-length v1, v1

    if-lt p1, v1, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/FontSizePreference;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 57
    .local v0, editPrefs:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_key_font_size"

    iget-object v2, p0, Lcom/android/mms/ui/FontSizePreference;->mFontSize:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 58
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/android/mms/ui/FontSizePreference;->mFontSizeName:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/FontSizePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 3
    .parameter "builder"

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 72
    iget-object v1, p0, Lcom/android/mms/ui/FontSizePreference;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getMessageFontSize(Landroid/content/Context;)I

    move-result v0

    .line 73
    .local v0, selected:I
    iget-object v1, p0, Lcom/android/mms/ui/FontSizePreference;->mFontListAdapter:Lcom/android/mms/ui/FontSizeAdapter;

    new-instance v2, Lcom/android/mms/ui/FontSizePreference$1;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/FontSizePreference$1;-><init>(Lcom/android/mms/ui/FontSizePreference;)V

    invoke-virtual {p1, v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 80
    return-void
.end method

.method public setSummaryByIndex(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 63
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/FontSizePreference;->mFontSize:[Ljava/lang/String;

    array-length v0, v0

    if-le p1, v0, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/FontSizePreference;->mFontSizeName:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/FontSizePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 83
    const v0, 0x7f060003

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/FontSizePreference;->setEntries(I)V

    .line 84
    const v0, 0x7f060004

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/FontSizePreference;->setEntryValues(I)V

    .line 86
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->showDialog(Landroid/os/Bundle;)V

    .line 87
    return-void
.end method
