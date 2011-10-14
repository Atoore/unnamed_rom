.class public abstract Landroid/preference/DialogPreference;
.super Landroid/preference/Preference;
.source "DialogPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/PreferenceManager$OnActivityDestroyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/DialogPreference$SavedState;
    }
.end annotation


# instance fields
.field private mBuilder:Landroid/app/AlertDialog$Builder;

.field private mDialog:Landroid/app/Dialog;

.field private mDialogIcon:Landroid/graphics/drawable/Drawable;

.field private mDialogLayoutResId:I

.field private mDialogMessage:Ljava/lang/CharSequence;

.field private mDialogTitle:Ljava/lang/CharSequence;

.field private mNegativeButtonText:Ljava/lang/CharSequence;

.field private mPositiveButtonText:Ljava/lang/CharSequence;

.field private mWhichButtonClicked:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 90
    const v0, 0x1010091

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    sget-object v1, Lcom/android/internal/R$styleable;->DialogPreference:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 73
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    .line 74
    iget-object v1, p0, Landroid/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    if-nez v1, :cond_1a

    .line 77
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    .line 79
    :cond_1a
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/DialogPreference;->mDialogMessage:Ljava/lang/CharSequence;

    .line 80
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/DialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    .line 81
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/DialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 82
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/DialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 83
    const/4 v1, 0x5

    iget v2, p0, Landroid/preference/DialogPreference;->mDialogLayoutResId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/preference/DialogPreference;->mDialogLayoutResId:I

    .line 85
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 87
    return-void
.end method

.method private requestInputMethod(Landroid/app/Dialog;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 323
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 324
    .local v0, window:Landroid/view/Window;
    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 326
    return-void
.end method


# virtual methods
.method public getDialog()Landroid/app/Dialog;
    .registers 2

    .prologue
    .line 402
    iget-object v0, p0, Landroid/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public getDialogIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 172
    iget-object v0, p0, Landroid/preference/DialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDialogLayoutResource()I
    .registers 2

    .prologue
    .line 249
    iget v0, p0, Landroid/preference/DialogPreference;->mDialogLayoutResId:I

    return v0
.end method

.method public getDialogMessage()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Landroid/preference/DialogPreference;->mDialogMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getDialogTitle()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Landroid/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getNegativeButtonText()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 228
    iget-object v0, p0, Landroid/preference/DialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPositiveButtonText()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 200
    iget-object v0, p0, Landroid/preference/DialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected needInputMethod()Z
    .registers 2

    .prologue
    .line 316
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityDestroy()V
    .registers 2

    .prologue
    .line 410
    iget-object v0, p0, Landroid/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_d

    .line 415
    :cond_c
    :goto_c
    return-void

    .line 414
    :cond_d
    iget-object v0, p0, Landroid/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_c
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .registers 7
    .parameter "view"

    .prologue
    .line 354
    const v4, 0x102000b

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 356
    .local v1, dialogMessageView:Landroid/view/View;
    if-eqz v1, :cond_2a

    .line 357
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object v2

    .line 358
    .local v2, message:Ljava/lang/CharSequence;
    const/16 v3, 0x8

    .line 360
    .local v3, newVisibility:I
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_21

    .line 361
    instance-of v4, v1, Landroid/widget/TextView;

    if-eqz v4, :cond_20

    .line 362
    move-object v0, v1

    check-cast v0, Landroid/widget/TextView;

    move-object v4, v0

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    :cond_20
    const/4 v3, 0x0

    .line 368
    :cond_21
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v3, :cond_2a

    .line 369
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 372
    .end local v2           #message:Ljava/lang/CharSequence;
    .end local v3           #newVisibility:I
    :cond_2a
    return-void
.end method

.method protected onClick()V
    .registers 2

    .prologue
    .line 264
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 265
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 375
    iput p2, p0, Landroid/preference/DialogPreference;->mWhichButtonClicked:I

    .line 376
    return-void
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 337
    iget v1, p0, Landroid/preference/DialogPreference;->mDialogLayoutResId:I

    if-nez v1, :cond_7

    move-object v1, v3

    .line 343
    :goto_6
    return-object v1

    .line 341
    :cond_7
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 343
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget v1, p0, Landroid/preference/DialogPreference;->mDialogLayoutResId:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_6
.end method

.method protected onDialogClosed(Z)V
    .registers 2
    .parameter "positiveResult"

    .prologue
    .line 394
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 380
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceManager;->unregisterOnActivityDestroyListener(Landroid/preference/PreferenceManager$OnActivityDestroyListener;)V

    .line 382
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    .line 383
    iget v0, p0, Landroid/preference/DialogPreference;->mWhichButtonClicked:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    const/4 v0, 0x1

    :goto_10
    invoke-virtual {p0, v0}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 384
    return-void

    .line 383
    :cond_14
    const/4 v0, 0x0

    goto :goto_10
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .registers 2
    .parameter "builder"

    .prologue
    .line 260
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 6
    .parameter "state"

    .prologue
    .line 432
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/preference/DialogPreference$SavedState;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 434
    :cond_e
    invoke-super {p0, p1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 443
    :cond_11
    :goto_11
    return-void

    .line 438
    :cond_12
    move-object v0, p1

    check-cast v0, Landroid/preference/DialogPreference$SavedState;

    move-object v1, v0

    .line 439
    .local v1, myState:Landroid/preference/DialogPreference$SavedState;
    invoke-virtual {v1}, Landroid/preference/DialogPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 440
    iget-boolean v2, v1, Landroid/preference/DialogPreference$SavedState;->isDialogShowing:Z

    if-eqz v2, :cond_11

    .line 441
    iget-object v2, v1, Landroid/preference/DialogPreference$SavedState;->dialogBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v2}, Landroid/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    goto :goto_11
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .prologue
    .line 419
    invoke-super {p0}, Landroid/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 420
    .local v1, superState:Landroid/os/Parcelable;
    iget-object v2, p0, Landroid/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_10

    iget-object v2, p0, Landroid/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_12

    :cond_10
    move-object v2, v1

    .line 427
    :goto_11
    return-object v2

    .line 424
    :cond_12
    new-instance v0, Landroid/preference/DialogPreference$SavedState;

    invoke-direct {v0, v1}, Landroid/preference/DialogPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 425
    .local v0, myState:Landroid/preference/DialogPreference$SavedState;
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/preference/DialogPreference$SavedState;->isDialogShowing:Z

    .line 426
    iget-object v2, p0, Landroid/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v0, Landroid/preference/DialogPreference$SavedState;->dialogBundle:Landroid/os/Bundle;

    move-object v2, v0

    .line 427
    goto :goto_11
.end method

.method public setDialogIcon(I)V
    .registers 3
    .parameter "dialogIconRes"

    .prologue
    .line 164
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/DialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    .line 165
    return-void
.end method

.method public setDialogIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .parameter "dialogIcon"

    .prologue
    .line 154
    iput-object p1, p0, Landroid/preference/DialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    .line 155
    return-void
.end method

.method public setDialogLayoutResource(I)V
    .registers 2
    .parameter "dialogLayoutResId"

    .prologue
    .line 239
    iput p1, p0, Landroid/preference/DialogPreference;->mDialogLayoutResId:I

    .line 240
    return-void
.end method

.method public setDialogMessage(I)V
    .registers 3
    .parameter "dialogMessageResId"

    .prologue
    .line 137
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/DialogPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 138
    return-void
.end method

.method public setDialogMessage(Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "dialogMessage"

    .prologue
    .line 129
    iput-object p1, p0, Landroid/preference/DialogPreference;->mDialogMessage:Ljava/lang/CharSequence;

    .line 130
    return-void
.end method

.method public setDialogTitle(I)V
    .registers 3
    .parameter "dialogTitleResId"

    .prologue
    .line 107
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/DialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 108
    return-void
.end method

.method public setDialogTitle(Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "dialogTitle"

    .prologue
    .line 99
    iput-object p1, p0, Landroid/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    .line 100
    return-void
.end method

.method public setNegativeButtonText(I)V
    .registers 3
    .parameter "negativeButtonTextResId"

    .prologue
    .line 218
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/DialogPreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    .line 219
    return-void
.end method

.method public setNegativeButtonText(Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "negativeButtonText"

    .prologue
    .line 210
    iput-object p1, p0, Landroid/preference/DialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 211
    return-void
.end method

.method public setPositiveButtonText(I)V
    .registers 3
    .parameter "positiveButtonTextResId"

    .prologue
    .line 190
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/DialogPreference;->setPositiveButtonText(Ljava/lang/CharSequence;)V

    .line 191
    return-void
.end method

.method public setPositiveButtonText(Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "positiveButtonText"

    .prologue
    .line 182
    iput-object p1, p0, Landroid/preference/DialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 183
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .registers 7
    .parameter "state"

    .prologue
    .line 275
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 277
    .local v1, context:Landroid/content/Context;
    const/4 v3, -0x2

    iput v3, p0, Landroid/preference/DialogPreference;->mWhichButtonClicked:I

    .line 279
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Landroid/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Landroid/preference/DialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Landroid/preference/DialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Landroid/preference/DialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iput-object v3, p0, Landroid/preference/DialogPreference;->mBuilder:Landroid/app/AlertDialog$Builder;

    .line 285
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->onCreateDialogView()Landroid/view/View;

    move-result-object v0

    .line 286
    .local v0, contentView:Landroid/view/View;
    if-eqz v0, :cond_5d

    .line 287
    invoke-virtual {p0, v0}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 288
    iget-object v3, p0, Landroid/preference/DialogPreference;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 293
    :goto_34
    iget-object v3, p0, Landroid/preference/DialogPreference;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v3}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 295
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/preference/PreferenceManager;->registerOnActivityDestroyListener(Landroid/preference/PreferenceManager$OnActivityDestroyListener;)V

    .line 298
    iget-object v3, p0, Landroid/preference/DialogPreference;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Landroid/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    .line 299
    .local v2, dialog:Landroid/app/Dialog;
    if-eqz p1, :cond_4d

    .line 300
    invoke-virtual {v2, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 302
    :cond_4d
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->needInputMethod()Z

    move-result v3

    if-eqz v3, :cond_56

    .line 303
    invoke-direct {p0, v2}, Landroid/preference/DialogPreference;->requestInputMethod(Landroid/app/Dialog;)V

    .line 305
    :cond_56
    invoke-virtual {v2, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 306
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 307
    return-void

    .line 290
    .end local v2           #dialog:Landroid/app/Dialog;
    :cond_5d
    iget-object v3, p0, Landroid/preference/DialogPreference;->mBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Landroid/preference/DialogPreference;->mDialogMessage:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_34
.end method
