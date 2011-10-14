.class public Landroid/preference/VolumePreference;
.super Landroid/preference/SeekBarPreference;
.source "VolumePreference.java"

# interfaces
.implements Landroid/preference/PreferenceManager$OnActivityStopListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/VolumePreference$SeekBarVolumizer;,
        Landroid/preference/VolumePreference$SavedState;,
        Landroid/preference/VolumePreference$VolumeStore;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "VolumePreference"


# instance fields
.field private MUSIC_VOLUME_LOW_HIGH_DIVISION:I

.field private mAudioMode:I

.field private mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

.field private mStreamType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    iput v2, p0, Landroid/preference/VolumePreference;->MUSIC_VOLUME_LOW_HIGH_DIVISION:I

    .line 63
    sget-object v1, Lcom/android/internal/R$styleable;->VolumePreference:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 64
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/preference/VolumePreference;->mStreamType:I

    .line 65
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 67
    invoke-static {}, Landroid/media/AudioManager;->getEarProtectLimitIndex()I

    move-result v1

    iput v1, p0, Landroid/preference/VolumePreference;->MUSIC_VOLUME_LOW_HIGH_DIVISION:I

    .line 68
    return-void
.end method

.method static synthetic access$300(Landroid/preference/VolumePreference;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Landroid/preference/VolumePreference;->MUSIC_VOLUME_LOW_HIGH_DIVISION:I

    return v0
.end method

.method private cleanup()V
    .registers 5

    .prologue
    .line 139
    invoke-virtual {p0}, Landroid/preference/VolumePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/preference/PreferenceManager;->unregisterOnActivityStopListener(Landroid/preference/PreferenceManager$OnActivityStopListener;)V

    .line 141
    iget-object v2, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    if-eqz v2, :cond_36

    .line 142
    invoke-virtual {p0}, Landroid/preference/VolumePreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 143
    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_31

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 144
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const v3, 0x1020248

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 146
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_2c

    .line 147
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 149
    :cond_2c
    iget-object v2, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {v2}, Landroid/preference/VolumePreference$SeekBarVolumizer;->revertVolume()V

    .line 151
    .end local v1           #view:Landroid/view/View;
    :cond_31
    iget-object v2, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {v2}, Landroid/preference/VolumePreference$SeekBarVolumizer;->stop()V

    .line 155
    .end local v0           #dialog:Landroid/app/Dialog;
    :cond_36
    return-void
.end method


# virtual methods
.method public onActivityStop()V
    .registers 1

    .prologue
    .line 130
    invoke-direct {p0}, Landroid/preference/VolumePreference;->cleanup()V

    .line 131
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .registers 6
    .parameter "view"

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/preference/SeekBarPreference;->onBindDialogView(Landroid/view/View;)V

    .line 79
    const v1, 0x1020248

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 80
    .local v0, seekBar:Landroid/widget/SeekBar;
    new-instance v1, Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {p0}, Landroid/preference/VolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Landroid/preference/VolumePreference;->mStreamType:I

    invoke-direct {v1, p0, v2, v0, v3}, Landroid/preference/VolumePreference$SeekBarVolumizer;-><init>(Landroid/preference/VolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;I)V

    iput-object v1, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    .line 81
    const-string v1, "VolumePreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBindDialogView : mStreamType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/preference/VolumePreference;->mStreamType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {p0}, Landroid/preference/VolumePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/preference/PreferenceManager;->registerOnActivityStopListener(Landroid/preference/PreferenceManager$OnActivityStopListener;)V

    .line 86
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 87
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 88
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 89
    return-void
.end method

.method protected onDialogClosed(Z)V
    .registers 3
    .parameter "positiveResult"

    .prologue
    .line 120
    invoke-super {p0, p1}, Landroid/preference/SeekBarPreference;->onDialogClosed(Z)V

    .line 122
    if-nez p1, :cond_e

    iget-object v0, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    if-eqz v0, :cond_e

    .line 123
    iget-object v0, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->revertVolume()V

    .line 125
    :cond_e
    invoke-direct {p0}, Landroid/preference/VolumePreference;->cleanup()V

    .line 126
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 94
    invoke-virtual {p0}, Landroid/preference/VolumePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/preference/PreferenceManager;->registerOnActivityStopListener(Landroid/preference/PreferenceManager$OnActivityStopListener;)V

    .line 95
    iget-object v1, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    if-nez v1, :cond_f

    move v1, v3

    .line 114
    :goto_e
    return v1

    .line 101
    :cond_f
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1b

    move v0, v3

    .line 102
    .local v0, isdown:Z
    :goto_16
    packed-switch p2, :pswitch_data_30

    move v1, v2

    .line 114
    goto :goto_e

    .end local v0           #isdown:Z
    :cond_1b
    move v0, v2

    .line 101
    goto :goto_16

    .line 104
    .restart local v0       #isdown:Z
    :pswitch_1d
    if-eqz v0, :cond_25

    .line 105
    iget-object v1, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/preference/VolumePreference$SeekBarVolumizer;->changeVolumeBy(I)V

    :cond_25
    move v1, v3

    .line 107
    goto :goto_e

    .line 109
    :pswitch_27
    if-eqz v0, :cond_2e

    .line 110
    iget-object v1, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {v1, v3}, Landroid/preference/VolumePreference$SeekBarVolumizer;->changeVolumeBy(I)V

    :cond_2e
    move v1, v3

    .line 112
    goto :goto_e

    .line 102
    :pswitch_data_30
    .packed-switch 0x18
        :pswitch_27
        :pswitch_1d
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 6
    .parameter "state"

    .prologue
    .line 194
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/preference/VolumePreference$SavedState;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 196
    :cond_e
    invoke-super {p0, p1}, Landroid/preference/SeekBarPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 205
    :cond_11
    :goto_11
    return-void

    .line 200
    :cond_12
    move-object v0, p1

    check-cast v0, Landroid/preference/VolumePreference$SavedState;

    move-object v1, v0

    .line 201
    .local v1, myState:Landroid/preference/VolumePreference$SavedState;
    invoke-virtual {v1}, Landroid/preference/VolumePreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/preference/SeekBarPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 202
    iget-object v2, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    if-eqz v2, :cond_11

    .line 203
    iget-object v2, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {v1}, Landroid/preference/VolumePreference$SavedState;->getVolumeStore()Landroid/preference/VolumePreference$VolumeStore;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/VolumePreference$SeekBarVolumizer;->onRestoreInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V

    goto :goto_11
.end method

.method protected onSampleStarting(Landroid/preference/VolumePreference$SeekBarVolumizer;)V
    .registers 3
    .parameter "volumizer"

    .prologue
    .line 172
    iget-object v0, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    if-eq p1, v0, :cond_d

    .line 173
    iget-object v0, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->stopSample()V

    .line 175
    :cond_d
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 5

    .prologue
    .line 179
    invoke-super {p0}, Landroid/preference/SeekBarPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 180
    .local v1, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Landroid/preference/VolumePreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_c

    move-object v2, v1

    .line 189
    :goto_b
    return-object v2

    .line 185
    :cond_c
    new-instance v0, Landroid/preference/VolumePreference$SavedState;

    invoke-direct {v0, v1}, Landroid/preference/VolumePreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 186
    .local v0, myState:Landroid/preference/VolumePreference$SavedState;
    iget-object v2, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    if-eqz v2, :cond_1e

    .line 187
    iget-object v2, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/VolumePreference$SavedState;->getVolumeStore()Landroid/preference/VolumePreference$VolumeStore;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/VolumePreference$SeekBarVolumizer;->onSaveInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V

    :cond_1e
    move-object v2, v0

    .line 189
    goto :goto_b
.end method

.method public setStreamType(I)V
    .registers 5
    .parameter "streamType"

    .prologue
    .line 71
    const-string v0, "VolumePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSteamType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iput p1, p0, Landroid/preference/VolumePreference;->mStreamType:I

    .line 73
    return-void
.end method

.method public setVolumePreferenceEnabled(Z)V
    .registers 4
    .parameter "enabled"

    .prologue
    .line 159
    iget-object v0, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    if-eqz v0, :cond_10

    .line 160
    iget-object v0, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v0

    if-eqz p1, :cond_11

    const/4 v1, 0x1

    :goto_d
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 162
    :cond_10
    return-void

    .line 160
    :cond_11
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public unrevertRingerVolume()V
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    if-eqz v0, :cond_9

    .line 166
    iget-object v0, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->unrevertVolume()V

    .line 167
    :cond_9
    return-void
.end method
