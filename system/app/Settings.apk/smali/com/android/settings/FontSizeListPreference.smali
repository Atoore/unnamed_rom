.class public Lcom/android/settings/FontSizeListPreference;
.super Landroid/preference/ListPreference;
.source "FontSizeListPreference.java"


# instance fields
.field private context:Landroid/content/Context;

.field private mFontSizeListAdapter:Lcom/android/settings/FontSizeListAdapter;

.field private mSelectedFontSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/FontSizeListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    const v1, 0x7f0806bf

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    iput-object v0, p0, Lcom/android/settings/FontSizeListPreference;->context:Landroid/content/Context;

    .line 45
    iput-object v0, p0, Lcom/android/settings/FontSizeListPreference;->mFontSizeListAdapter:Lcom/android/settings/FontSizeListAdapter;

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/FontSizeListPreference;->mSelectedFontSize:I

    .line 54
    iput-object p1, p0, Lcom/android/settings/FontSizeListPreference;->context:Landroid/content/Context;

    .line 55
    invoke-virtual {p0, v1}, Lcom/android/settings/FontSizeListPreference;->setTitle(I)V

    .line 56
    const v0, 0x7f0806c0

    invoke-virtual {p0, v0}, Lcom/android/settings/FontSizeListPreference;->setSummary(I)V

    .line 57
    invoke-virtual {p0, v1}, Lcom/android/settings/FontSizeListPreference;->setDialogTitle(I)V

    .line 58
    const/high16 v0, 0x104

    invoke-virtual {p0, v0}, Lcom/android/settings/FontSizeListPreference;->setNegativeButtonText(I)V

    .line 59
    return-void
.end method


# virtual methods
.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 3
    .parameter "builder"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings/FontSizeListPreference;->mFontSizeListAdapter:Lcom/android/settings/FontSizeListAdapter;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/android/settings/FontSizeListAdapter;

    iget-object v1, p0, Lcom/android/settings/FontSizeListPreference;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/FontSizeListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/FontSizeListPreference;->mFontSizeListAdapter:Lcom/android/settings/FontSizeListAdapter;

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/android/settings/FontSizeListPreference;->mFontSizeListAdapter:Lcom/android/settings/FontSizeListAdapter;

    iget-object v0, v0, Lcom/android/settings/FontSizeListAdapter;->mFontSizeNames:Ljava/util/Vector;

    iget-object v1, p0, Lcom/android/settings/FontSizeListPreference;->mFontSizeListAdapter:Lcom/android/settings/FontSizeListAdapter;

    iget-object v1, v1, Lcom/android/settings/FontSizeListAdapter;->mFontSizeNames:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/FontSizeListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Lcom/android/settings/FontSizeListPreference;->mFontSizeListAdapter:Lcom/android/settings/FontSizeListAdapter;

    iget-object v0, v0, Lcom/android/settings/FontSizeListAdapter;->mFontSizeIndexes:Ljava/util/Vector;

    iget-object v1, p0, Lcom/android/settings/FontSizeListPreference;->mFontSizeListAdapter:Lcom/android/settings/FontSizeListAdapter;

    iget-object v1, v1, Lcom/android/settings/FontSizeListAdapter;->mFontSizeIndexes:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/FontSizeListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lcom/android/settings/FontSizeListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "font_size"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/FontSizeListPreference;->mSelectedFontSize:I

    .line 84
    const-string v0, "FontSizeListPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPrepareDialogBuilder : Selected item : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/FontSizeListPreference;->mSelectedFontSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v0, p0, Lcom/android/settings/FontSizeListPreference;->mFontSizeListAdapter:Lcom/android/settings/FontSizeListAdapter;

    iget v1, p0, Lcom/android/settings/FontSizeListPreference;->mSelectedFontSize:I

    invoke-virtual {p1, v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 86
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 87
    return-void
.end method
