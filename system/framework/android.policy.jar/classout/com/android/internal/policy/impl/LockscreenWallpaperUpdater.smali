.class public Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;
.super Landroid/widget/RelativeLayout;
.source "LockscreenWallpaperUpdater.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final IS_CHANGED_DRAWABLE:I = 0x1

.field private static final IS_NOT_CHANGED_DRAWABLE:I = 0x0

.field private static LOCKSCREEN_WALLPAPER_INFO:Ljava/lang/String; = null

.field private static final MODE_HOMESCREEN_WALLPAPER:I = 0x0

.field private static final MODE_LOCKSCREEN_WALLPAPER:I = 0x1

.field private static final MSG_BOOT_COMPLETED:I = 0x140

.field private static final MSG_LOCKSCREENWALLPAPER_CHANGED:I = 0x136

.field private static final TAG:Ljava/lang/String; = "LockscreenWallpaperUpdater"

.field private static final WALLPAPERIMAGE_PATH:Ljava/lang/String; = "/data/data/com.cooliris.media/files/zzzzzz_lockscreen_wallpaper.jpg"


# instance fields
.field private mBootCompleted:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mLockScreenWallpaperImage:Landroid/widget/ImageView;

.field private mLockscreenWallpaperDrawable:Landroid/graphics/drawable/Drawable;

.field private mMainLayout:Landroid/widget/RelativeLayout;

.field private mWallpaperModeValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    const-string v0, "com.android.lockscreenwallpaper.CHANGED"

    sput-object v0, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->LOCKSCREEN_WALLPAPER_INFO:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 74
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 53
    iput-object v3, p0, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->mMainLayout:Landroid/widget/RelativeLayout;

    .line 54
    iput-object v3, p0, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    .line 62
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->mBootCompleted:Z

    .line 64
    iput-object v3, p0, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->mLockscreenWallpaperDrawable:Landroid/graphics/drawable/Drawable;

    .line 76
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 77
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v2, 0x109007f

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 79
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->getLockscreenWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->mLockscreenWallpaperDrawable:Landroid/graphics/drawable/Drawable;

    .line 81
    const v2, 0x1020294

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->mMainLayout:Landroid/widget/RelativeLayout;

    .line 82
    const v2, 0x1020295

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    .line 84
    new-instance v2, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater$1;-><init>(Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->mHandler:Landroid/os/Handler;

    .line 102
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 103
    .local v0, filter:Landroid/content/IntentFilter;
    sget-object v2, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->LOCKSCREEN_WALLPAPER_INFO:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    new-instance v2, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater$2;-><init>(Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 122
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 124
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->init()V

    .line 126
    const-string v2, "LockscreenWallpaperUpdater"

    const-string v3, "add lockscreenwallpaper"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->handleLockScreenWallpaperUpdate(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->handleBootCompleted()V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .prologue
    .line 45
    sget-object v0, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->LOCKSCREEN_WALLPAPER_INFO:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getLockscreenDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    const-string v1, "LockscreenWallpaperUpdater"

    .line 199
    const-string v0, "LockscreenWallpaperUpdater"

    const-string v0, "get drawable (keygurardupdatemonitor private get) "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->mBootCompleted:Z

    if-nez v0, :cond_17

    .line 204
    const-string v0, "LockscreenWallpaperUpdater"

    const-string v0, "drawable is null(keygurardupdatemonitor private get) "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->setLockscreenDrawable()V

    .line 207
    :cond_17
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->mLockscreenWallpaperDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getWallpaperDrawable()Landroid/graphics/drawable/Drawable;
    .registers 9

    .prologue
    const v6, 0x1080431

    const-string v7, "LockscreenWallpaperUpdater"

    const-string v4, "/data/data/com.cooliris.media/files/zzzzzz_lockscreen_wallpaper.jpg"

    .line 213
    const/4 v2, 0x0

    .line 215
    .local v2, tmpDrawable:Landroid/graphics/drawable/Drawable;
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/data/com.cooliris.media/files/zzzzzz_lockscreen_wallpaper.jpg"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 217
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 222
    :try_start_15
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "/data/data/com.cooliris.media/files/zzzzzz_lockscreen_wallpaper.jpg"

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_24} :catch_25

    .line 232
    :goto_24
    return-object v3

    .line 223
    :catch_25
    move-exception v3

    move-object v0, v3

    .line 224
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "LockscreenWallpaperUpdater"

    const-string v3, "Exception : Using default lockscreen BG"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_24

    .line 230
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_3b
    const-string v3, "LockscreenWallpaperUpdater"

    const-string v3, "wallpaper file not exist "

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v3, v2

    .line 232
    goto :goto_24
.end method

.method private handleBootCompleted()V
    .registers 2

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->setLockscreenDrawable()V

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->mBootCompleted:Z

    .line 139
    return-void
.end method

.method private handleLockScreenWallpaperUpdate(I)V
    .registers 4
    .parameter "mode"

    .prologue
    .line 131
    const-string v0, "LockscreenWallpaperUpdater"

    const-string v1, "handleLockScreenWallpaperUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->setLockscreenDrawable()V

    .line 134
    return-void
.end method

.method private init()V
    .registers 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->mLockscreenWallpaperDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 144
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .registers 3

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 149
    const-string v0, "LockscreenWallpaperUpdater"

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-void
.end method

.method public getLockscreenWallpaper()Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 186
    const-string v0, "LockscreenWallpaperUpdater"

    const-string v1, "get drawable (public) "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->getLockscreenDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 158
    const-string v0, "LockscreenWallpaperUpdater"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 163
    const-string v0, "LockscreenWallpaperUpdater"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->init()V

    .line 167
    return-void
.end method

.method public onStop()V
    .registers 3

    .prologue
    .line 153
    const-string v0, "LockscreenWallpaperUpdater"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return-void
.end method

.method protected setLockscreenDrawable()V
    .registers 3

    .prologue
    .line 193
    const-string v0, "LockscreenWallpaperUpdater"

    const-string v1, "set drawable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->getWallpaperDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->mLockscreenWallpaperDrawable:Landroid/graphics/drawable/Drawable;

    .line 196
    return-void
.end method
