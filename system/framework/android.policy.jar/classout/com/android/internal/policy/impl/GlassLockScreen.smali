.class Lcom/android/internal/policy/impl/GlassLockScreen;
.super Landroid/widget/LinearLayout;
.source "GlassLockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/GlassLockScreen$4;,
        Lcom/android/internal/policy/impl/GlassLockScreen$Status;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LOCK_ANIMATION_MOVE_RANGE:I = 0x14

.field private static final LOCK_ANIMATION_START_DELAY:I = 0x64

.field private static final LOCK_KEY:Ljava/lang/String; = "ril.pin_mode"

.field private static final MAINLAYOUT_INDEX:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GlassLockScreen"


# instance fields
.field private layoutPosition:I

.field private mAnimate:Z

.field private mBoxLayout:Landroid/widget/LinearLayout;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCarrier:Landroid/widget/TextView;

.field private mCarrierName:Lcom/android/internal/policy/impl/CarrierName;

.field private mCreationOrientation:I

.field private mDisplayEmergencyCallButton:I

.field private mDisplaySimLockMsg:I

.field private mEmergencyCallButton:Landroid/widget/Button;

.field private mEmergencyCallButton2:Landroid/widget/Button;

.field private mGlassLockScreenMissedEventWidget:Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;

.field private mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

.field private mGlassLockscreenInfo:Lcom/android/internal/policy/impl/GlassLockscreenInfo;

.field mHandler:Landroid/os/Handler;

.field private mKeyboardHidden:I

.field private mLandClockLayout:Landroid/widget/RelativeLayout;

.field private mLandInfoLayout:Landroid/widget/RelativeLayout;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockscreenShadowWall:Landroid/widget/ImageView;

.field private mLockscreenWallpaperUpdater:Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;

.field private mMainLayout:Landroid/widget/RelativeLayout;

.field private mSimLockMsg1:Landroid/widget/TextView;

.field private mSimLockMsg2:Landroid/widget/TextView;

.field private mSimLockMsg3:Landroid/widget/TextView;

.field private mSimLockMsg4:Landroid/widget/TextView;

.field private final mStartLockAnimation:Ljava/lang/Runnable;

.field private mStatus:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

.field private mTimeTick_Layout_Refresh:Z

.field private mTransAnimation:Landroid/view/animation/TranslateAnimation;

.field private mUnLocked:Z

.field private mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field mX:F

.field mY:F


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .registers 15
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    .line 170
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 79
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    .line 84
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLandClockLayout:Landroid/widget/RelativeLayout;

    .line 85
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLandInfoLayout:Landroid/widget/RelativeLayout;

    .line 89
    sget-object v4, Lcom/android/internal/policy/impl/GlassLockScreen$Status;->Normal:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    iput-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mStatus:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    .line 144
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCarrier:Landroid/widget/TextView;

    .line 152
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mAnimate:Z

    .line 153
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mTimeTick_Layout_Refresh:Z

    .line 154
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnLocked:Z

    .line 155
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mTransAnimation:Landroid/view/animation/TranslateAnimation;

    .line 372
    new-instance v4, Lcom/android/internal/policy/impl/GlassLockScreen$3;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/GlassLockScreen$3;-><init>(Lcom/android/internal/policy/impl/GlassLockScreen;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mStartLockAnimation:Ljava/lang/Runnable;

    .line 433
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mX:F

    .line 434
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mY:F

    .line 171
    iput-object p3, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 172
    iput-object p4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 173
    iput-object p5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 174
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnLocked:Z

    .line 176
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mHandler:Landroid/os/Handler;

    .line 178
    iget v4, p2, Landroid/content/res/Configuration;->orientation:I

    iput v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCreationOrientation:I

    .line 180
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 183
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget v4, p2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mKeyboardHidden:I

    .line 184
    iget v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mKeyboardHidden:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_52

    iget v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCreationOrientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_260

    .line 185
    :cond_52
    const v4, 0x109007c

    const/4 v5, 0x1

    invoke-virtual {v0, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 195
    :goto_59
    const v4, 0x1020280

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/GlassLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .end local p3
    check-cast p3, Landroid/widget/RelativeLayout;

    iput-object p3, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    .line 196
    const v4, 0x1020281

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/GlassLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLockscreenShadowWall:Landroid/widget/ImageView;

    .line 197
    const v4, 0x1020287

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/GlassLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mBoxLayout:Landroid/widget/LinearLayout;

    .line 200
    const v4, 0x1020288

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/GlassLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout;

    iput-object p3, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLandClockLayout:Landroid/widget/RelativeLayout;

    .line 201
    const v4, 0x1020289

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/GlassLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout;

    iput-object p3, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLandInfoLayout:Landroid/widget/RelativeLayout;

    .line 202
    const v4, 0x10201fa

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/GlassLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCarrier:Landroid/widget/TextView;

    .line 204
    const v4, 0x1020282

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/GlassLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg1:Landroid/widget/TextView;

    .line 205
    const v4, 0x1020283

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/GlassLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg2:Landroid/widget/TextView;

    .line 206
    const v4, 0x1020284

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/GlassLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg3:Landroid/widget/TextView;

    .line 207
    const v4, 0x1020285

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/GlassLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg4:Landroid/widget/TextView;

    .line 208
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg1:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 209
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg2:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 210
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg3:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 211
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg4:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 212
    const v4, 0x10201ee

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/GlassLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    iput-object p3, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    .line 213
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    const v5, 0x1040327

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 214
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/internal/policy/impl/GlassLockScreen$1;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/GlassLockScreen$1;-><init>(Lcom/android/internal/policy/impl/GlassLockScreen;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 222
    const v4, 0x1020286

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/GlassLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    iput-object p3, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mEmergencyCallButton2:Landroid/widget/Button;

    .line 223
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mEmergencyCallButton2:Landroid/widget/Button;

    const v5, 0x1040327

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 224
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mEmergencyCallButton2:Landroid/widget/Button;

    new-instance v5, Lcom/android/internal/policy/impl/GlassLockScreen$2;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/GlassLockScreen$2;-><init>(Lcom/android/internal/policy/impl/GlassLockScreen;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mEmergencyCallButton2:Landroid/widget/Button;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 234
    new-instance v4, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;

    invoke-direct {v4, p1}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLockscreenWallpaperUpdater:Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;

    .line 235
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLockscreenWallpaperUpdater:Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->setVisibility(I)V

    .line 236
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLockscreenWallpaperUpdater:Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    .line 239
    new-instance v4, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-direct {v4, v5, v6, v7, p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/GlassLockScreen;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    .line 240
    new-instance v4, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-direct {v4, v5, v6}, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMissedEventWidget:Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;

    .line 242
    iget v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mKeyboardHidden:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_162

    iget v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCreationOrientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_269

    .line 243
    :cond_162
    new-instance v4, Lcom/android/internal/policy/impl/UnlockClockGB;

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/android/internal/policy/impl/UnlockClockGB;-><init>(Landroid/content/Context;Z)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

    .line 244
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/UnlockClockGB;->setVisibility(I)V

    .line 245
    new-instance v4, Lcom/android/internal/policy/impl/GlassLockscreenInfo;

    invoke-direct {v4, p1, p4, p2}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/res/Configuration;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockscreenInfo:Lcom/android/internal/policy/impl/GlassLockscreenInfo;

    .line 246
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLandInfoLayout:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockscreenInfo:Lcom/android/internal/policy/impl/GlassLockscreenInfo;

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 255
    :goto_180
    new-instance v4, Lcom/android/internal/policy/impl/CarrierName;

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/internal/policy/impl/CarrierName;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCarrierName:Lcom/android/internal/policy/impl/CarrierName;

    .line 258
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 259
    .local v2, mBlankLinearLayout:Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 260
    .local v1, mBlankLP:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v4, 0x3f80

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 261
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 263
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 264
    .local v3, mUnlockClockLP:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v4, 0x3f80

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 265
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

    invoke-virtual {v4, v3}, Lcom/android/internal/policy/impl/UnlockClockGB;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 267
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "clock_position"

    const/4 v6, 0x2

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->layoutPosition:I

    .line 269
    iget v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mKeyboardHidden:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1c5

    iget v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCreationOrientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1c8

    .line 271
    :cond_1c5
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->layoutPosition:I

    .line 274
    :cond_1c8
    const-string v4, "GlassLockScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CLOCK_POSITION from Setting Value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->layoutPosition:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->layoutPosition:I

    packed-switch v4, :pswitch_data_35c

    .line 328
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLockscreenShadowWall:Landroid/widget/ImageView;

    const v5, 0x10803e9

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 330
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mBoxLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCarrierName:Lcom/android/internal/policy/impl/CarrierName;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 332
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mBoxLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 333
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setTopLayout()V

    .line 334
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mBoxLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 335
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/UnlockClockGB;->setGravity(I)V

    .line 336
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mBoxLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 337
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mBoxLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMissedEventWidget:Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 341
    :goto_21c
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/GlassLockScreen;->setFocusable(Z)V

    .line 342
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/GlassLockScreen;->setFocusableInTouchMode(Z)V

    .line 343
    const/high16 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/GlassLockScreen;->setDescendantFocusability(I)V

    .line 345
    invoke-virtual {p4, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 347
    invoke-virtual {p4, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V

    .line 350
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x0

    const/high16 v6, 0x41a0

    const/4 v7, 0x0

    const/high16 v8, -0x3e60

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mTransAnimation:Landroid/view/animation/TranslateAnimation;

    .line 351
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mTransAnimation:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v5, 0x12c

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 352
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mTransAnimation:Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/animation/TranslateAnimation;->setFillEnabled(Z)V

    .line 353
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mTransAnimation:Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 354
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mTransAnimation:Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/animation/TranslateAnimation;->setFillBefore(Z)V

    .line 355
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mTransAnimation:Landroid/view/animation/TranslateAnimation;

    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 356
    return-void

    .line 189
    .end local v1           #mBlankLP:Landroid/widget/LinearLayout$LayoutParams;
    .end local v2           #mBlankLinearLayout:Landroid/widget/LinearLayout;
    .end local v3           #mUnlockClockLP:Landroid/widget/LinearLayout$LayoutParams;
    .restart local p3
    :cond_260
    const v4, 0x109007b

    const/4 v5, 0x1

    invoke-virtual {v0, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_59

    .line 249
    .end local p3
    :cond_269
    new-instance v4, Lcom/android/internal/policy/impl/UnlockClockGB;

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Lcom/android/internal/policy/impl/UnlockClockGB;-><init>(Landroid/content/Context;Z)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

    .line 250
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/UnlockClockGB;->setVisibility(I)V

    .line 251
    new-instance v4, Lcom/android/internal/policy/impl/GlassLockscreenInfo;

    invoke-direct {v4, p1, p4, p2}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/res/Configuration;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockscreenInfo:Lcom/android/internal/policy/impl/GlassLockscreenInfo;

    .line 252
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockscreenInfo:Lcom/android/internal/policy/impl/GlassLockscreenInfo;

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/UnlockClockGB;->addView(Landroid/view/View;)V

    goto/16 :goto_180

    .line 279
    .restart local v1       #mBlankLP:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v2       #mBlankLinearLayout:Landroid/widget/LinearLayout;
    .restart local v3       #mUnlockClockLP:Landroid/widget/LinearLayout$LayoutParams;
    :pswitch_289
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLockscreenShadowWall:Landroid/widget/ImageView;

    const v5, 0x10803e8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 280
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

    const/16 v5, 0x30

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/UnlockClockGB;->setGravity(I)V

    .line 282
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mBoxLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCarrierName:Lcom/android/internal/policy/impl/CarrierName;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 284
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mBoxLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 285
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mBoxLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMissedEventWidget:Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 286
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mBoxLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 287
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mBoxLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 288
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setBottomLayout()V

    goto/16 :goto_21c

    .line 292
    :pswitch_2c0
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLockscreenShadowWall:Landroid/widget/ImageView;

    const v5, 0x10803e9

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 293
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mBoxLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 294
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setTopLayout()V

    .line 296
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mBoxLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCarrierName:Lcom/android/internal/policy/impl/CarrierName;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 298
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mBoxLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 299
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/UnlockClockGB;->setGravity(I)V

    .line 300
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mBoxLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 301
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mBoxLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMissedEventWidget:Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_21c

    .line 305
    :pswitch_2f7
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLockscreenShadowWall:Landroid/widget/ImageView;

    const v5, 0x10803e7

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 306
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mBoxLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 307
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setTopLayout()V

    .line 309
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mBoxLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCarrierName:Lcom/android/internal/policy/impl/CarrierName;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 310
    iget v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mKeyboardHidden:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_31c

    iget v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCreationOrientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_33f

    .line 313
    :cond_31c
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMissedEventWidget:Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->setGravity(I)V

    .line 314
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mBoxLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMissedEventWidget:Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 315
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mBoxLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 317
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

    const/16 v5, 0x50

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/UnlockClockGB;->setGravity(I)V

    .line 318
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLandClockLayout:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_21c

    .line 321
    :cond_33f
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mBoxLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 322
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mBoxLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMissedEventWidget:Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 323
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

    const/16 v5, 0x50

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/UnlockClockGB;->setGravity(I)V

    .line 324
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mBoxLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_21c

    .line 276
    nop

    :pswitch_data_35c
    .packed-switch 0x0
        :pswitch_289
        :pswitch_2c0
        :pswitch_2f7
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/GlassLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/GlassLockScreen;)Landroid/widget/RelativeLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/GlassLockScreen;)Landroid/view/animation/TranslateAnimation;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mTransAnimation:Landroid/view/animation/TranslateAnimation;

    return-object v0
.end method

.method private getCurrentStatus(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/GlassLockScreen$Status;
    .registers 5
    .parameter "simState"

    .prologue
    .line 593
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_13

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne p1, v1, :cond_13

    const/4 v1, 0x1

    move v0, v1

    .line 597
    .local v0, missingAndNotProvisioned:Z
    :goto_e
    if-eqz v0, :cond_16

    .line 598
    sget-object v1, Lcom/android/internal/policy/impl/GlassLockScreen$Status;->SimMissingLocked:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    .line 621
    :goto_12
    return-object v1

    .line 593
    .end local v0           #missingAndNotProvisioned:Z
    :cond_13
    const/4 v1, 0x0

    move v0, v1

    goto :goto_e

    .line 601
    .restart local v0       #missingAndNotProvisioned:Z
    :cond_16
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreen;->isPermanentBlock()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 602
    sget-object v1, Lcom/android/internal/policy/impl/GlassLockScreen$Status;->SimMissingLocked:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    goto :goto_12

    .line 606
    :cond_1f
    sget-object v1, Lcom/android/internal/policy/impl/GlassLockScreen$4;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_40

    .line 621
    sget-object v1, Lcom/android/internal/policy/impl/GlassLockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    goto :goto_12

    .line 608
    :pswitch_2d
    sget-object v1, Lcom/android/internal/policy/impl/GlassLockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    goto :goto_12

    .line 610
    :pswitch_30
    sget-object v1, Lcom/android/internal/policy/impl/GlassLockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    goto :goto_12

    .line 612
    :pswitch_33
    sget-object v1, Lcom/android/internal/policy/impl/GlassLockScreen$Status;->SimLocked:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    goto :goto_12

    .line 614
    :pswitch_36
    sget-object v1, Lcom/android/internal/policy/impl/GlassLockScreen$Status;->SimPukLocked:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    goto :goto_12

    .line 616
    :pswitch_39
    sget-object v1, Lcom/android/internal/policy/impl/GlassLockScreen$Status;->Normal:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    goto :goto_12

    .line 618
    :pswitch_3c
    sget-object v1, Lcom/android/internal/policy/impl/GlassLockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    goto :goto_12

    .line 606
    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_30
        :pswitch_33
        :pswitch_36
        :pswitch_39
        :pswitch_3c
    .end packed-switch
.end method

.method private isPermanentBlock()Z
    .registers 4

    .prologue
    .line 580
    const-string v1, "ril.pin_mode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 581
    .local v0, lock_key:Ljava/lang/String;
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 582
    :cond_16
    const-string v1, "GlassLockScreen"

    const-string v2, "EJ-IsPermnentBlock"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    const/4 v1, 0x1

    .line 585
    :goto_1e
    return v1

    :cond_1f
    const/4 v1, 0x0

    goto :goto_1e
.end method

.method private resetStatusInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .registers 3
    .parameter "updateMonitor"

    .prologue
    .line 768
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreen;->getCurrentStatus(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mStatus:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    .line 769
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mStatus:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreen;->updateLayout(Lcom/android/internal/policy/impl/GlassLockScreen$Status;)V

    .line 770
    return-void
.end method

.method private updateLayout(Lcom/android/internal/policy/impl/GlassLockScreen$Status;)V
    .registers 10
    .parameter "status"

    .prologue
    const v4, 0x104050f

    const/4 v7, 0x1

    const/16 v3, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 631
    sget-object v1, Lcom/android/internal/policy/impl/GlassLockScreen$4;->$SwitchMap$com$android$internal$policy$impl$GlassLockScreen$Status:[I

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/GlassLockScreen$Status;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_378

    .line 753
    :cond_13
    :goto_13
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mDisplayEmergencyCallButton:I

    .line 754
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg1:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mDisplaySimLockMsg:I

    .line 755
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->displayingMaxLayout()Z

    move-result v1

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 756
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/GlassLockScreen;->maxMusicControllerUpdate(Z)V

    .line 758
    :cond_36
    return-void

    .line 634
    :pswitch_37
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCarrierName:Lcom/android/internal/policy/impl/CarrierName;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/CarrierName;->RefreshCarrierName(Ljava/lang/CharSequence;)V

    .line 635
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg1:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 636
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg2:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 637
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg3:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 638
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg4:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 639
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 640
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mEmergencyCallButton2:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_13

    .line 644
    :pswitch_61
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCarrierName:Lcom/android/internal/policy/impl/CarrierName;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/CarrierName;->RefreshCarrierName(Ljava/lang/CharSequence;)V

    .line 645
    iget v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->layoutPosition:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_80

    .line 646
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg2:Landroid/widget/TextView;

    const v2, 0x104050d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 647
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg2:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 648
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_13

    .line 649
    :cond_80
    iget v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->layoutPosition:I

    if-ne v1, v7, :cond_98

    .line 650
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg2:Landroid/widget/TextView;

    const v2, 0x104050d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 651
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg2:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 652
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_13

    .line 653
    :cond_98
    iget v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->layoutPosition:I

    if-nez v1, :cond_13

    .line 654
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg4:Landroid/widget/TextView;

    const v2, 0x104050d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 655
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg4:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 656
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mEmergencyCallButton2:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_13

    .line 660
    :pswitch_b0
    const-string v1, "ril.pin_mode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 661
    .local v0, lock_key:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreen;->isPermanentBlock()Z

    move-result v1

    if-eqz v1, :cond_1d2

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d2

    .line 662
    iget v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->layoutPosition:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_149

    .line 663
    iget v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mKeyboardHidden:I

    if-eq v1, v7, :cond_d2

    iget v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCreationOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_11d

    .line 665
    :cond_d2
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg1:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mContext:Landroid/content/Context;

    const v4, 0x1040512

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 669
    :goto_fd
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg1:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 670
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg2:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 671
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg3:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 672
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg4:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 731
    :cond_111
    :goto_111
    iget v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->layoutPosition:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_346

    .line 732
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_13

    .line 667
    :cond_11d
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg1:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mContext:Landroid/content/Context;

    const v4, 0x1040510

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_fd

    .line 673
    :cond_149
    iget v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->layoutPosition:I

    if-ne v1, v7, :cond_18d

    .line 674
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg1:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mContext:Landroid/content/Context;

    const v4, 0x1040510

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 675
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg1:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 676
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg2:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 677
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg3:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 678
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg4:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_111

    .line 679
    :cond_18d
    iget v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->layoutPosition:I

    if-nez v1, :cond_111

    .line 680
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg3:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mContext:Landroid/content/Context;

    const v4, 0x1040510

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 681
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg3:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 682
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg4:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 683
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg1:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 684
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg2:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_111

    .line 687
    :cond_1d2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreen;->isPermanentBlock()Z

    move-result v1

    if-eqz v1, :cond_2e5

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e5

    .line 688
    iget v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->layoutPosition:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_25b

    .line 689
    iget v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mKeyboardHidden:I

    if-eq v1, v7, :cond_1ee

    iget v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCreationOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_22f

    .line 691
    :cond_1ee
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg1:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mContext:Landroid/content/Context;

    const v4, 0x1040513

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 695
    :goto_219
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg1:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 696
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg2:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 697
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg3:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 698
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg4:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_111

    .line 693
    :cond_22f
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg1:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mContext:Landroid/content/Context;

    const v4, 0x1040511

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_219

    .line 699
    :cond_25b
    iget v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->layoutPosition:I

    if-ne v1, v7, :cond_2a0

    .line 700
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg1:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mContext:Landroid/content/Context;

    const v4, 0x1040511

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 701
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg1:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 702
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg2:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 703
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg3:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 704
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg4:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_111

    .line 705
    :cond_2a0
    iget v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->layoutPosition:I

    if-nez v1, :cond_111

    .line 706
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg3:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mContext:Landroid/content/Context;

    const v4, 0x1040511

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 707
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg3:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 708
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg4:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 709
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg1:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 710
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg2:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_111

    .line 714
    :cond_2e5
    iget v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->layoutPosition:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_306

    .line 715
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg1:Landroid/widget/TextView;

    const v2, 0x1040330

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 716
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg2:Landroid/widget/TextView;

    const v2, 0x1040332

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 717
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg1:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 718
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg2:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_111

    .line 719
    :cond_306
    iget v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->layoutPosition:I

    if-ne v1, v7, :cond_326

    .line 720
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg1:Landroid/widget/TextView;

    const v2, 0x1040330

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 721
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg2:Landroid/widget/TextView;

    const v2, 0x1040332

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 722
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg1:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 723
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg2:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_111

    .line 724
    :cond_326
    iget v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->layoutPosition:I

    if-nez v1, :cond_111

    .line 725
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg3:Landroid/widget/TextView;

    const v2, 0x1040330

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 726
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg4:Landroid/widget/TextView;

    const v2, 0x1040332

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 727
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg3:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 728
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg4:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_111

    .line 733
    :cond_346
    iget v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->layoutPosition:I

    if-ne v1, v7, :cond_351

    .line 734
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_13

    .line 735
    :cond_351
    iget v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->layoutPosition:I

    if-nez v1, :cond_13

    .line 736
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mEmergencyCallButton2:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_13

    .line 745
    .end local v0           #lock_key:Ljava/lang/String;
    :pswitch_35c
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg1:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 746
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg2:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 747
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg3:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 748
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 749
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mEmergencyCallButton2:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_13

    .line 631
    nop

    :pswitch_data_378
    .packed-switch 0x1
        :pswitch_37
        :pswitch_61
        :pswitch_b0
        :pswitch_35c
        :pswitch_35c
    .end packed-switch
.end method


# virtual methods
.method public cleanUp()V
    .registers 2

    .prologue
    .line 821
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 823
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 824
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->cleanUp()V

    .line 825
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMissedEventWidget:Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->cleanUp()V

    .line 826
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLockscreenWallpaperUpdater:Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->cleanUp()V

    .line 827
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockscreenInfo:Lcom/android/internal/policy/impl/GlassLockscreenInfo;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->cleanUp()V

    .line 829
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockClockGB;->cleanUp()V

    .line 831
    return-void
.end method

.method public final maxMusicControllerUpdate(Z)V
    .registers 5
    .parameter "isShown"

    .prologue
    .line 360
    const-string v0, "GlassLockScreenMusicWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxMusicControllerUpdate(): isShown="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mKeyboardHidden:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_26

    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCreationOrientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_26

    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->layoutPosition:I

    if-eqz v0, :cond_2f

    .line 363
    :cond_26
    if-eqz p1, :cond_30

    .line 364
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg1:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 369
    :cond_2f
    :goto_2f
    return-void

    .line 366
    :cond_30
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg1:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mDisplaySimLockMsg:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2f
.end method

.method public needsInput()Z
    .registers 2

    .prologue
    .line 782
    const/4 v0, 0x0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 21
    .parameter "event"

    .prologue
    .line 386
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v16

    if-nez v16, :cond_22

    const-string v16, "GlassLockScreen"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "onInterceptTouchEvent(): event="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_22
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    .line 389
    .local v5, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    .line 390
    .local v14, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v15

    .line 391
    .local v15, y:F
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 392
    .local v9, tmpRect:Landroid/graphics/Rect;
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 394
    .local v10, tmpRect2:Landroid/graphics/Rect;
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 395
    .local v11, tmpRect3:Landroid/graphics/Rect;
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 396
    .local v12, tmpRect4:Landroid/graphics/Rect;
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 398
    .local v13, tmpRect5:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    move-object/from16 v16, v0

    if-eqz v16, :cond_5b

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/widget/Button;->getHitRect(Landroid/graphics/Rect;)V

    .line 401
    :cond_5b
    move v0, v14

    float-to-int v0, v0

    move/from16 v16, v0

    move v0, v15

    float-to-int v0, v0

    move/from16 v17, v0

    move-object v0, v11

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    .line 403
    .local v4, EmergencyCallButtonHit:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mEmergencyCallButton2:Landroid/widget/Button;

    move-object/from16 v16, v0

    if-eqz v16, :cond_80

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mEmergencyCallButton2:Landroid/widget/Button;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/widget/Button;->getHitRect(Landroid/graphics/Rect;)V

    .line 406
    :cond_80
    move v0, v14

    float-to-int v0, v0

    move/from16 v16, v0

    move v0, v15

    float-to-int v0, v0

    move/from16 v17, v0

    move-object v0, v13

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    .line 408
    .local v3, EmergencyCallButton2Hit:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    move-object/from16 v16, v0

    if-eqz v16, :cond_a5

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v9

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->getHitRect(Landroid/graphics/Rect;)V

    .line 410
    :cond_a5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMissedEventWidget:Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;

    move-object/from16 v16, v0

    if-eqz v16, :cond_b9

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMissedEventWidget:Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v9

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->getHitRect(Landroid/graphics/Rect;)V

    .line 413
    :cond_b9
    move v0, v14

    float-to-int v0, v0

    move/from16 v16, v0

    move v0, v15

    float-to-int v0, v0

    move/from16 v17, v0

    move-object v0, v9

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    .line 414
    .local v8, musicWidgetTabHit:Z
    move v0, v14

    float-to-int v0, v0

    move/from16 v16, v0

    move v0, v15

    float-to-int v0, v0

    move/from16 v17, v0

    move-object v0, v10

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    .line 415
    .local v6, mediaPanelHit:Z
    move v0, v14

    float-to-int v0, v0

    move/from16 v16, v0

    move v0, v15

    float-to-int v0, v0

    move/from16 v17, v0

    move-object v0, v9

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    .line 417
    .local v7, missedEventTabHit:Z
    const-string v16, "GlassLockScreen"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "musicWidgetTabHit="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", mediaPanelHit="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", missedEventTabHit="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", EmergencyCallButtonHit="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", EmergencyCallButton2Hit="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    packed-switch v5, :pswitch_data_15a

    .line 429
    const/16 v16, 0x0

    :goto_140
    return v16

    .line 422
    :pswitch_141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 423
    if-nez v8, :cond_157

    if-nez v6, :cond_157

    if-eqz v7, :cond_157

    if-nez v4, :cond_157

    if-nez v3, :cond_157

    .line 424
    const/16 v16, 0x1

    goto :goto_140

    .line 426
    :cond_157
    const/16 v16, 0x0

    goto :goto_140

    .line 420
    :pswitch_data_15a
    .packed-switch 0x0
        :pswitch_141
    .end packed-switch
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 787
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnLocked:Z

    .line 788
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->onPause()V

    .line 789
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMissedEventWidget:Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->onPause()V

    .line 790
    return-void
.end method

.method public onPhoneStateChanged(Ljava/lang/String;)V
    .registers 4
    .parameter "newState"

    .prologue
    .line 776
    const-string v0, "GlassLockScreen"

    const-string v1, "onPhoneStateChanged()...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 778
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .registers 5
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockscreenInfo:Lcom/android/internal/policy/impl/GlassLockscreenInfo;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->onResume()V

    .line 552
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 4
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 568
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mStatus:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreen;->updateLayout(Lcom/android/internal/policy/impl/GlassLockScreen$Status;)V

    .line 570
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 794
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnLocked:Z

    .line 795
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLockscreenWallpaperUpdater:Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->onResume()V

    .line 796
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockClockGB;->refreshTimeAndDateDisplay()V

    .line 797
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->onResume()V

    .line 798
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMissedEventWidget:Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->onResume()V

    .line 799
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockscreenInfo:Lcom/android/internal/policy/impl/GlassLockscreenInfo;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->onResume()V

    .line 801
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCarrierName:Lcom/android/internal/policy/impl/CarrierName;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/CarrierName;->RefreshCarrierName(Ljava/lang/CharSequence;)V

    .line 802
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreen;->resetStatusInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    .line 806
    return-void
.end method

.method public onRingerModeChanged(I)V
    .registers 2
    .parameter "state"

    .prologue
    .line 574
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V
    .registers 5
    .parameter "simState"

    .prologue
    .line 762
    const-string v0, "GlassLockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSimStateChanged(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/GlassLockScreen;->getCurrentStatus(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mStatus:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    .line 764
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mStatus:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreen;->updateLayout(Lcom/android/internal/policy/impl/GlassLockScreen$Status;)V

    .line 765
    return-void
.end method

.method public onTimeChanged()V
    .registers 5

    .prologue
    const/16 v3, 0x14

    .line 556
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/UnlockClockGB;->resetClockInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    .line 557
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mTimeTick_Layout_Refresh:Z

    if-eqz v0, :cond_25

    .line 558
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, 0x14

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, 0x14

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/RelativeLayout;->layout(IIII)V

    .line 561
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mTimeTick_Layout_Refresh:Z

    .line 563
    :cond_25
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 29
    .parameter "event"

    .prologue
    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object/from16 v21, v0

    if-nez v21, :cond_12

    .line 440
    const-string v21, "GlassLockScreen"

    const-string v22, "cleanUp() may be called, mCallback is null now!!"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    const/16 v21, 0x1

    .line 545
    :goto_11
    return v21

    .line 446
    :cond_12
    const-string v21, "ril.pin_mode"

    invoke-static/range {v21 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 447
    .local v15, lock_key:Ljava/lang/String;
    const-string v21, "2"

    move-object v0, v15

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_26

    const/16 v21, 0x1

    goto :goto_11

    .line 450
    :cond_26
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v21

    if-nez v21, :cond_48

    const-string v21, "GlassLockScreen"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "onTouchEvent(): event="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_48
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    .line 452
    .local v5, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v19

    .line 453
    .local v19, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v20

    .line 454
    .local v20, y:F
    const/4 v7, 0x0

    .line 455
    .local v7, diffX:I
    const/4 v9, 0x0

    .line 456
    .local v9, diffY:I
    const/4 v8, 0x0

    .line 457
    .local v8, diffX_ori:I
    const/4 v10, 0x0

    .line 458
    .local v10, diffY_ori:I
    const/4 v6, 0x0

    .line 461
    .local v6, currentMusicPlayingStatus:Z
    packed-switch v5, :pswitch_data_32a

    .line 545
    :cond_5c
    :goto_5c
    const/16 v21, 0x1

    goto :goto_11

    .line 463
    :pswitch_5f
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/GlassLockScreen;->mTimeTick_Layout_Refresh:Z

    .line 465
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mAnimate:Z

    move/from16 v21, v0

    if-nez v21, :cond_88

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mStartLockAnimation:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    const-wide/16 v23, 0x64

    invoke-virtual/range {v21 .. v24}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 467
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/GlassLockScreen;->mAnimate:Z

    .line 470
    :cond_88
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setVisibility(I)V

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isControllerShowing()Z

    move-result v6

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setControllerVisibility(ZZ)V

    .line 474
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/GlassLockScreen;->mX:F

    .line 475
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/GlassLockScreen;->mY:F

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/policy/impl/UnlockClockGB;->setVisibility(I)V

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLockscreenWallpaperUpdater:Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->setVisibility(I)V

    goto :goto_5c

    .line 481
    :pswitch_d9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 482
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/GlassLockScreen;->mTimeTick_Layout_Refresh:Z

    .line 485
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mX:F

    move/from16 v21, v0

    sub-float v21, v19, v21

    move/from16 v0, v21

    float-to-int v0, v0

    move v7, v0

    .line 486
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mY:F

    move/from16 v21, v0

    sub-float v21, v20, v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v22

    mul-int v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v22

    div-int v9, v21, v22

    .line 487
    move v0, v7

    int-to-double v0, v0

    move-wide/from16 v21, v0

    const-wide/high16 v23, 0x4000

    invoke-static/range {v21 .. v24}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v21

    move v0, v9

    int-to-double v0, v0

    move-wide/from16 v23, v0

    const-wide/high16 v25, 0x4000

    invoke-static/range {v23 .. v26}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v23

    add-double v13, v21, v23

    .line 488
    .local v13, distance_square:D
    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    .line 489
    .local v11, distance:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_25c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v21

    move/from16 v16, v21

    .line 490
    .local v16, min:I
    :goto_15b
    mul-int/lit8 v21, v16, 0x2

    div-int/lit8 v21, v21, 0x3

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v17, v0

    .line 492
    .local v17, threshold:D
    mul-int/lit8 v21, v16, 0x9

    div-int/lit8 v21, v21, 0x14

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v17, v0

    .line 494
    const-string v21, "GlassLockScreen"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "onTouchEvent() : threshold="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", distance="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide v1, v11

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", alpha="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mAnimate:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1cf

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mStartLockAnimation:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mTransAnimation:Landroid/view/animation/TranslateAnimation;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/animation/TranslateAnimation;->setFillEnabled(Z)V

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 500
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/GlassLockScreen;->mAnimate:Z

    .line 503
    :cond_1cf
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v21, v0

    if-eqz v21, :cond_236

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/policy/impl/UnlockClockGB;->setVisibility(I)V

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLockscreenWallpaperUpdater:Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->setVisibility(I)V

    .line 508
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mX:F

    move/from16 v21, v0

    sub-float v21, v19, v21

    const/high16 v22, 0x41a0

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move v8, v0

    .line 509
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mY:F

    move/from16 v21, v0

    sub-float v21, v20, v21

    const/high16 v22, 0x41a0

    sub-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move v10, v0

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v22

    add-int v22, v22, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v23

    add-int v23, v23, v10

    move-object/from16 v0, v21

    move v1, v8

    move v2, v10

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout;->layout(IIII)V

    .line 514
    :cond_236
    cmpl-double v21, v11, v17

    if-ltz v21, :cond_5c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnLocked:Z

    move/from16 v21, v0

    if-nez v21, :cond_5c

    .line 515
    const-string v21, "GlassLockScreen"

    const-string v22, "Threshold is reached. goToUnlockScreen !!"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnLocked:Z

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto/16 :goto_5c

    .line 489
    .end local v16           #min:I
    .end local v17           #threshold:D
    :cond_25c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v21

    move/from16 v16, v21

    goto/16 :goto_15b

    .line 522
    .end local v11           #distance:D
    .end local v13           #distance_square:D
    :pswitch_26a
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/GlassLockScreen;->mX:F

    .line 523
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/GlassLockScreen;->mY:F

    .line 524
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/GlassLockScreen;->mTimeTick_Layout_Refresh:Z

    .line 526
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mAnimate:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2b8

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mStartLockAnimation:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mTransAnimation:Landroid/view/animation/TranslateAnimation;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/view/animation/TranslateAnimation;->setFillEnabled(Z)V

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 530
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/GlassLockScreen;->mAnimate:Z

    .line 531
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/GlassLockScreen;->invalidate()V

    .line 534
    :cond_2b8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v21, v0

    if-eqz v21, :cond_5c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnLocked:Z

    move/from16 v21, v0

    if-nez v21, :cond_5c

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v25

    invoke-virtual/range {v21 .. v25}, Landroid/widget/RelativeLayout;->layout(IIII)V

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLockscreenWallpaperUpdater:Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->setVisibility(I)V

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setVisibility(I)V

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isControllerShowing()Z

    move-result v6

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setControllerVisibility(ZZ)V

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/policy/impl/UnlockClockGB;->setVisibility(I)V

    .line 541
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/GlassLockScreen;->clearFocus()V

    goto/16 :goto_5c

    .line 461
    nop

    :pswitch_data_32a
    .packed-switch 0x0
        :pswitch_5f
        :pswitch_26a
        :pswitch_d9
        :pswitch_26a
    .end packed-switch
.end method

.method public setScreenOff()V
    .registers 4

    .prologue
    .line 814
    const-string v0, "GlassLockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScreenOff() mGlassLockScreenMusicWidget="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    if-eqz v0, :cond_23

    .line 816
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setScreenOff()V

    .line 817
    :cond_23
    return-void
.end method

.method public setScreenOn()V
    .registers 4

    .prologue
    .line 808
    const-string v0, "GlassLockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScreenOn() mGlassLockScreenMusicWidget="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    if-eqz v0, :cond_23

    .line 810
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setScreenOn()V

    .line 811
    :cond_23
    return-void
.end method
