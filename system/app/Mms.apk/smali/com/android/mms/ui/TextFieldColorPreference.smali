.class public Lcom/android/mms/ui/TextFieldColorPreference;
.super Landroid/preference/ListPreference;
.source "TextFieldColorPreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mImageData:[I

.field private mTextFieldColor:[Ljava/lang/String;

.field private mTextFieldColorListAdapter:Lcom/android/mms/ui/TextFieldColorAdapter;

.field private mTextFieldColorName:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x0

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    iput-object v2, p0, Lcom/android/mms/ui/TextFieldColorPreference;->mTextFieldColorListAdapter:Lcom/android/mms/ui/TextFieldColorAdapter;

    .line 26
    iput-object v2, p0, Lcom/android/mms/ui/TextFieldColorPreference;->mContext:Landroid/content/Context;

    .line 28
    iput-object v2, p0, Lcom/android/mms/ui/TextFieldColorPreference;->mTextFieldColor:[Ljava/lang/String;

    .line 29
    iput-object v2, p0, Lcom/android/mms/ui/TextFieldColorPreference;->mTextFieldColorName:[Ljava/lang/String;

    .line 31
    new-array v2, v5, [I

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/android/mms/ui/TextFieldColorPreference;->mImageData:[I

    .line 42
    iput-object p1, p0, Lcom/android/mms/ui/TextFieldColorPreference;->mContext:Landroid/content/Context;

    .line 44
    iget-object v2, p0, Lcom/android/mms/ui/TextFieldColorPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/TextFieldColorPreference;->mTextFieldColor:[Ljava/lang/String;

    .line 45
    iget-object v2, p0, Lcom/android/mms/ui/TextFieldColorPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060013

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/TextFieldColorPreference;->mTextFieldColorName:[Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v0, adiArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/ui/AlertDialogItem;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v5, :cond_0

    .line 50
    new-instance v2, Lcom/android/mms/ui/AlertDialogItem;

    iget-object v3, p0, Lcom/android/mms/ui/TextFieldColorPreference;->mImageData:[I

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/TextFieldColorPreference;->mTextFieldColorName:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-direct {v2, v3, v4}, Lcom/android/mms/ui/AlertDialogItem;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
    :cond_0
    new-instance v2, Lcom/android/mms/ui/TextFieldColorAdapter;

    iget-object v3, p0, Lcom/android/mms/ui/TextFieldColorPreference;->mContext:Landroid/content/Context;

    const v4, 0x7f03002f

    invoke-direct {v2, v3, v4, v0}, Lcom/android/mms/ui/TextFieldColorAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v2, p0, Lcom/android/mms/ui/TextFieldColorPreference;->mTextFieldColorListAdapter:Lcom/android/mms/ui/TextFieldColorAdapter;

    .line 55
    return-void

    .line 31
    :array_0
    .array-data 0x4
        0x3t 0x0t 0x2t 0x7ft
        0x4t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/mms/ui/TextFieldColorPreference;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/android/mms/ui/TextFieldColorPreference;->savePreferences(I)V

    return-void
.end method

.method private savePreferences(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 58
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/TextFieldColorPreference;->mTextFieldColor:[Ljava/lang/String;

    array-length v1, v1

    if-lt p1, v1, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/TextFieldColorPreference;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 63
    .local v0, editPrefs:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_key_text_field_color"

    iget-object v2, p0, Lcom/android/mms/ui/TextFieldColorPreference;->mTextFieldColor:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 64
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/android/mms/ui/TextFieldColorPreference;->mTextFieldColorName:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/TextFieldColorPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 3
    .parameter "builder"

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 78
    iget-object v1, p0, Lcom/android/mms/ui/TextFieldColorPreference;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getTextFieldColor(Landroid/content/Context;)I

    move-result v0

    .line 79
    .local v0, selected:I
    iget-object v1, p0, Lcom/android/mms/ui/TextFieldColorPreference;->mTextFieldColorListAdapter:Lcom/android/mms/ui/TextFieldColorAdapter;

    new-instance v2, Lcom/android/mms/ui/TextFieldColorPreference$1;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/TextFieldColorPreference$1;-><init>(Lcom/android/mms/ui/TextFieldColorPreference;)V

    invoke-virtual {p1, v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 86
    return-void
.end method

.method public setSummaryByIndex(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 69
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/TextFieldColorPreference;->mTextFieldColor:[Ljava/lang/String;

    array-length v0, v0

    if-le p1, v0, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/TextFieldColorPreference;->mTextFieldColorName:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/TextFieldColorPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 89
    const v0, 0x7f060013

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/TextFieldColorPreference;->setEntries(I)V

    .line 90
    const v0, 0x7f060012

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/TextFieldColorPreference;->setEntryValues(I)V

    .line 92
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->showDialog(Landroid/os/Bundle;)V

    .line 93
    return-void
.end method
