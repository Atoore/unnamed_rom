.class public Landroid/webkit/WebSettings;
.super Ljava/lang/Object;
.source "WebSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebSettings$1;,
        Landroid/webkit/WebSettings$EventHandler;,
        Landroid/webkit/WebSettings$PluginState;,
        Landroid/webkit/WebSettings$RenderPriority;,
        Landroid/webkit/WebSettings$ZoomDensity;,
        Landroid/webkit/WebSettings$TextSize;,
        Landroid/webkit/WebSettings$LayoutAlgorithm;
    }
.end annotation


# static fields
.field private static final DESKTOP_USERAGENT:Ljava/lang/String; = "Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_7; en-us) AppleWebKit/530.17 (KHTML, like Gecko) Version/4.0 Safari/530.17"

.field private static final DOUBLE_TAP_TOAST_COUNT:Ljava/lang/String; = "double_tap_toast_count"

.field private static final IPHONE_USERAGENT:Ljava/lang/String; = "Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16"

.field public static final LOAD_CACHE_ELSE_NETWORK:I = 0x1

.field public static final LOAD_CACHE_ONLY:I = 0x3

.field public static final LOAD_DEFAULT:I = -0x1

.field public static final LOAD_NORMAL:I = 0x0

.field public static final LOAD_NO_CACHE:I = 0x2

.field private static final PREF_FILE:Ljava/lang/String; = "WebViewSettings"

.field private static mDoubleTapToastCount:I

.field private static sLocale:Ljava/util/Locale;

.field private static sLockForLocaleSettings:Ljava/lang/Object;


# instance fields
.field private mAcceptLanguage:Ljava/lang/String;

.field private mAdvanceTextSelection:Z

.field private mAllowContentAccess:Z

.field private mAllowFileAccess:Z

.field private mAppCacheEnabled:Z

.field private mAppCacheMaxSize:J

.field private mAppCachePath:Ljava/lang/String;

.field private mBlockNetworkImage:Z

.field private mBlockNetworkLoads:Z

.field private mBrowserFrame:Landroid/webkit/BrowserFrame;

.field private mBuiltInZoomControls:Z

.field private mContext:Landroid/content/Context;

.field private mCursiveFontFamily:Ljava/lang/String;

.field private mDatabaseEnabled:Z

.field private mDatabasePath:Ljava/lang/String;

.field private mDatabasePathHasBeenSet:Z

.field private mDebugCache:Z

.field private mDebugInfo:Z

.field private mDebugNetwork:Z

.field private mDebugVervose:Z

.field private mDefaultFixedFontSize:I

.field private mDefaultFontSize:I

.field private mDefaultTextEncoding:Ljava/lang/String;

.field private mDefaultZoom:Landroid/webkit/WebSettings$ZoomDensity;

.field private mDomStorageEnabled:Z

.field private mEditableSupport:Z

.field private final mEventHandler:Landroid/webkit/WebSettings$EventHandler;

.field private mFantasyFontFamily:Ljava/lang/String;

.field private mFixedFontFamily:Ljava/lang/String;

.field private mGeolocationDatabasePath:Ljava/lang/String;

.field private mGeolocationEnabled:Z

.field private mJavaScriptCanOpenWindowsAutomatically:Z

.field private mJavaScriptEnabled:Z

.field private mLayoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

.field private mLightTouchEnabled:Z

.field private mLoadWithOverviewMode:Z

.field private mLoadsImagesAutomatically:Z

.field private mMinimumFontSize:I

.field private mMinimumLogicalFontSize:I

.field private mNavDump:Z

.field private mNeedInitialFocus:Z

.field private mOverrideCacheMode:I

.field private mPageCacheCapacity:I

.field private mPluginState:Landroid/webkit/WebSettings$PluginState;

.field private mRenderPriority:Landroid/webkit/WebSettings$RenderPriority;

.field private mSansSerifFontFamily:Ljava/lang/String;

.field private mSaveFormData:Z

.field private mSavePassword:Z

.field private mSerifFontFamily:Ljava/lang/String;

.field private mShrinksStandaloneImagesToFit:Z

.field private mStandardFontFamily:Ljava/lang/String;

.field private mSupportMultipleWindows:Z

.field private mSupportZoom:Z

.field private mSupportZoomWithoutControls:Z

.field private mSyncPending:Z

.field private mTextSize:Landroid/webkit/WebSettings$TextSize;

.field private mUseDefaultUserAgent:Z

.field private mUseDoubleTree:Z

.field private mUseWebViewBackgroundOverscrollBackground:Z

.field private mUseWideViewport:Z

.field private mUserAgent:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;

.field private mWorkersEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 228
    const/4 v0, 0x3

    sput v0, Landroid/webkit/WebSettings;->mDoubleTapToastCount:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;)V
    .registers 9
    .parameter "context"
    .parameter "webview"

    .prologue
    const/16 v1, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v3, "sans-serif"

    const-string v2, ""

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-boolean v4, p0, Landroid/webkit/WebSettings;->mSyncPending:Z

    .line 154
    sget-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    iput-object v0, p0, Landroid/webkit/WebSettings;->mLayoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 156
    sget-object v0, Landroid/webkit/WebSettings$TextSize;->NORMAL:Landroid/webkit/WebSettings$TextSize;

    iput-object v0, p0, Landroid/webkit/WebSettings;->mTextSize:Landroid/webkit/WebSettings$TextSize;

    .line 157
    const-string/jumbo v0, "sans-serif"

    iput-object v3, p0, Landroid/webkit/WebSettings;->mStandardFontFamily:Ljava/lang/String;

    .line 158
    const-string/jumbo v0, "monospace"

    iput-object v0, p0, Landroid/webkit/WebSettings;->mFixedFontFamily:Ljava/lang/String;

    .line 159
    const-string/jumbo v0, "sans-serif"

    iput-object v3, p0, Landroid/webkit/WebSettings;->mSansSerifFontFamily:Ljava/lang/String;

    .line 160
    const-string/jumbo v0, "serif"

    iput-object v0, p0, Landroid/webkit/WebSettings;->mSerifFontFamily:Ljava/lang/String;

    .line 161
    const-string v0, "cursive"

    iput-object v0, p0, Landroid/webkit/WebSettings;->mCursiveFontFamily:Ljava/lang/String;

    .line 162
    const-string v0, "fantasy"

    iput-object v0, p0, Landroid/webkit/WebSettings;->mFantasyFontFamily:Ljava/lang/String;

    .line 167
    iput v1, p0, Landroid/webkit/WebSettings;->mMinimumFontSize:I

    .line 168
    iput v1, p0, Landroid/webkit/WebSettings;->mMinimumLogicalFontSize:I

    .line 169
    const/16 v0, 0x10

    iput v0, p0, Landroid/webkit/WebSettings;->mDefaultFontSize:I

    .line 170
    const/16 v0, 0xd

    iput v0, p0, Landroid/webkit/WebSettings;->mDefaultFixedFontSize:I

    .line 171
    iput v4, p0, Landroid/webkit/WebSettings;->mPageCacheCapacity:I

    .line 172
    iput-boolean v5, p0, Landroid/webkit/WebSettings;->mLoadsImagesAutomatically:Z

    .line 173
    iput-boolean v4, p0, Landroid/webkit/WebSettings;->mBlockNetworkImage:Z

    .line 175
    iput-boolean v4, p0, Landroid/webkit/WebSettings;->mJavaScriptEnabled:Z

    .line 176
    sget-object v0, Landroid/webkit/WebSettings$PluginState;->OFF:Landroid/webkit/WebSettings$PluginState;

    iput-object v0, p0, Landroid/webkit/WebSettings;->mPluginState:Landroid/webkit/WebSettings$PluginState;

    .line 177
    iput-boolean v4, p0, Landroid/webkit/WebSettings;->mJavaScriptCanOpenWindowsAutomatically:Z

    .line 178
    iput-boolean v4, p0, Landroid/webkit/WebSettings;->mUseDoubleTree:Z

    .line 179
    iput-boolean v4, p0, Landroid/webkit/WebSettings;->mUseWideViewport:Z

    .line 180
    iput-boolean v4, p0, Landroid/webkit/WebSettings;->mDebugInfo:Z

    .line 181
    iput-boolean v4, p0, Landroid/webkit/WebSettings;->mDebugVervose:Z

    .line 182
    iput-boolean v4, p0, Landroid/webkit/WebSettings;->mDebugNetwork:Z

    .line 183
    iput-boolean v4, p0, Landroid/webkit/WebSettings;->mDebugCache:Z

    .line 184
    iput-boolean v4, p0, Landroid/webkit/WebSettings;->mSupportMultipleWindows:Z

    .line 185
    iput-boolean v4, p0, Landroid/webkit/WebSettings;->mShrinksStandaloneImagesToFit:Z

    .line 187
    iput-boolean v4, p0, Landroid/webkit/WebSettings;->mAppCacheEnabled:Z

    .line 188
    iput-boolean v4, p0, Landroid/webkit/WebSettings;->mDatabaseEnabled:Z

    .line 189
    iput-boolean v4, p0, Landroid/webkit/WebSettings;->mDomStorageEnabled:Z

    .line 190
    iput-boolean v4, p0, Landroid/webkit/WebSettings;->mWorkersEnabled:Z

    .line 191
    iput-boolean v5, p0, Landroid/webkit/WebSettings;->mGeolocationEnabled:Z

    .line 193
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Landroid/webkit/WebSettings;->mAppCacheMaxSize:J

    .line 194
    const-string v0, ""

    iput-object v2, p0, Landroid/webkit/WebSettings;->mAppCachePath:Ljava/lang/String;

    .line 195
    const-string v0, ""

    iput-object v2, p0, Landroid/webkit/WebSettings;->mDatabasePath:Ljava/lang/String;

    .line 198
    iput-boolean v4, p0, Landroid/webkit/WebSettings;->mDatabasePathHasBeenSet:Z

    .line 199
    const-string v0, ""

    iput-object v2, p0, Landroid/webkit/WebSettings;->mGeolocationDatabasePath:Ljava/lang/String;

    .line 203
    sget-object v0, Landroid/webkit/WebSettings$ZoomDensity;->MEDIUM:Landroid/webkit/WebSettings$ZoomDensity;

    iput-object v0, p0, Landroid/webkit/WebSettings;->mDefaultZoom:Landroid/webkit/WebSettings$ZoomDensity;

    .line 204
    sget-object v0, Landroid/webkit/WebSettings$RenderPriority;->NORMAL:Landroid/webkit/WebSettings$RenderPriority;

    iput-object v0, p0, Landroid/webkit/WebSettings;->mRenderPriority:Landroid/webkit/WebSettings$RenderPriority;

    .line 205
    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/WebSettings;->mOverrideCacheMode:I

    .line 206
    iput-boolean v5, p0, Landroid/webkit/WebSettings;->mSaveFormData:Z

    .line 207
    iput-boolean v5, p0, Landroid/webkit/WebSettings;->mSavePassword:Z

    .line 208
    iput-boolean v4, p0, Landroid/webkit/WebSettings;->mLightTouchEnabled:Z

    .line 209
    iput-boolean v5, p0, Landroid/webkit/WebSettings;->mNeedInitialFocus:Z

    .line 210
    iput-boolean v4, p0, Landroid/webkit/WebSettings;->mNavDump:Z

    .line 211
    iput-boolean v5, p0, Landroid/webkit/WebSettings;->mSupportZoom:Z

    .line 212
    iput-boolean v4, p0, Landroid/webkit/WebSettings;->mBuiltInZoomControls:Z

    .line 214
    iput-boolean v4, p0, Landroid/webkit/WebSettings;->mSupportZoomWithoutControls:Z

    .line 216
    iput-boolean v5, p0, Landroid/webkit/WebSettings;->mAllowFileAccess:Z

    .line 217
    iput-boolean v5, p0, Landroid/webkit/WebSettings;->mAllowContentAccess:Z

    .line 218
    iput-boolean v4, p0, Landroid/webkit/WebSettings;->mLoadWithOverviewMode:Z

    .line 219
    iput-boolean v5, p0, Landroid/webkit/WebSettings;->mUseWebViewBackgroundOverscrollBackground:Z

    .line 221
    iput-boolean v4, p0, Landroid/webkit/WebSettings;->mAdvanceTextSelection:Z

    .line 225
    iput-boolean v4, p0, Landroid/webkit/WebSettings;->mEditableSupport:Z

    .line 327
    new-instance v0, Landroid/webkit/WebSettings$EventHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/webkit/WebSettings$EventHandler;-><init>(Landroid/webkit/WebSettings;Landroid/webkit/WebSettings$1;)V

    iput-object v0, p0, Landroid/webkit/WebSettings;->mEventHandler:Landroid/webkit/WebSettings$EventHandler;

    .line 328
    iput-object p1, p0, Landroid/webkit/WebSettings;->mContext:Landroid/content/Context;

    .line 329
    iput-object p2, p0, Landroid/webkit/WebSettings;->mWebView:Landroid/webkit/WebView;

    .line 330
    const v0, 0x10400b1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebSettings;->mDefaultTextEncoding:Ljava/lang/String;

    .line 333
    sget-object v0, Landroid/webkit/WebSettings;->sLockForLocaleSettings:Ljava/lang/Object;

    if-nez v0, :cond_c8

    .line 334
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/webkit/WebSettings;->sLockForLocaleSettings:Ljava/lang/Object;

    .line 335
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Landroid/webkit/WebSettings;->sLocale:Ljava/util/Locale;

    .line 337
    :cond_c8
    invoke-direct {p0}, Landroid/webkit/WebSettings;->getCurrentAcceptLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebSettings;->mAcceptLanguage:Ljava/lang/String;

    .line 338
    invoke-direct {p0}, Landroid/webkit/WebSettings;->getCurrentUserAgent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;

    .line 339
    iput-boolean v5, p0, Landroid/webkit/WebSettings;->mUseDefaultUserAgent:Z

    .line 341
    iget-object v0, p0, Landroid/webkit/WebSettings;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERNET"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_ec

    move v0, v5

    :goto_e9
    iput-boolean v0, p0, Landroid/webkit/WebSettings;->mBlockNetworkLoads:Z

    .line 344
    return-void

    :cond_ec
    move v0, v4

    .line 341
    goto :goto_e9
.end method

.method static synthetic access$000(Landroid/webkit/WebSettings;)Landroid/webkit/BrowserFrame;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Landroid/webkit/WebSettings;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    return-object v0
.end method

.method static synthetic access$100(Landroid/webkit/WebSettings;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/webkit/WebSettings;->nativeSync(I)V

    return-void
.end method

.method static synthetic access$202(Landroid/webkit/WebSettings;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mSyncPending:Z

    return p1
.end method

.method static synthetic access$400(Landroid/webkit/WebSettings;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Landroid/webkit/WebSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500()I
    .registers 1

    .prologue
    .line 38
    sget v0, Landroid/webkit/WebSettings;->mDoubleTapToastCount:I

    return v0
.end method

.method static synthetic access$600(Landroid/webkit/WebSettings;)Landroid/webkit/WebSettings$RenderPriority;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Landroid/webkit/WebSettings;->mRenderPriority:Landroid/webkit/WebSettings$RenderPriority;

    return-object v0
.end method

.method private getCurrentAcceptLanguage()Ljava/lang/String;
    .registers 8

    .prologue
    const-string v6, "-"

    .line 352
    sget-object v5, Landroid/webkit/WebSettings;->sLockForLocaleSettings:Ljava/lang/Object;

    monitor-enter v5

    .line 353
    :try_start_5
    sget-object v3, Landroid/webkit/WebSettings;->sLocale:Ljava/util/Locale;

    .line 354
    .local v3, locale:Ljava/util/Locale;
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_53

    .line 355
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 356
    .local v0, buffer:Ljava/lang/StringBuffer;
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 357
    .local v2, language:Ljava/lang/String;
    if-eqz v2, :cond_24

    .line 358
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 359
    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 360
    .local v1, country:Ljava/lang/String;
    if-eqz v1, :cond_24

    .line 361
    const-string v5, "-"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 362
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 365
    .end local v1           #country:Ljava/lang/String;
    :cond_24
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4e

    .line 366
    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 367
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 368
    .local v4, us:Ljava/util/Locale;
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4e

    .line 369
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 370
    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 371
    .restart local v1       #country:Ljava/lang/String;
    if-eqz v1, :cond_4e

    .line 372
    const-string v5, "-"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 373
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 378
    .end local v1           #country:Ljava/lang/String;
    .end local v4           #us:Ljava/util/Locale;
    :cond_4e
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 354
    .end local v0           #buffer:Ljava/lang/StringBuffer;
    .end local v2           #language:Ljava/lang/String;
    .end local v3           #locale:Ljava/util/Locale;
    :catchall_53
    move-exception v6

    :try_start_54
    monitor-exit v5
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw v6
.end method

.method private declared-synchronized getCurrentUserAgent()Ljava/lang/String;
    .registers 11

    .prologue
    const-string v8, "; "

    .line 387
    monitor-enter p0

    :try_start_3
    sget-object v8, Landroid/webkit/WebSettings;->sLockForLocaleSettings:Ljava/lang/Object;

    monitor-enter v8
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_87

    .line 388
    :try_start_6
    sget-object v5, Landroid/webkit/WebSettings;->sLocale:Ljava/util/Locale;

    .line 389
    .local v5, locale:Ljava/util/Locale;
    monitor-exit v8
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_84

    .line 390
    :try_start_9
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 392
    .local v1, buffer:Ljava/lang/StringBuffer;
    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 393
    .local v7, version:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_8a

    .line 394
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 399
    :goto_19
    const-string v8, "; "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 400
    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 401
    .local v4, language:Ljava/lang/String;
    if-eqz v4, :cond_90

    .line 402
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 403
    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 404
    .local v2, country:Ljava/lang/String;
    if-eqz v2, :cond_3d

    .line 405
    const-string v8, "-"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 406
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 413
    .end local v2           #country:Ljava/lang/String;
    :cond_3d
    :goto_3d
    const-string v8, "REL"

    sget-object v9, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_57

    .line 414
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 415
    .local v6, model:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_57

    .line 416
    const-string v8, "; "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 427
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 430
    .end local v6           #model:Ljava/lang/String;
    :cond_57
    sget-object v3, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 431
    .local v3, id:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_67

    .line 432
    const-string v8, " Build/"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 433
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 435
    :cond_67
    iget-object v8, p0, Landroid/webkit/WebSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1040352

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 437
    .local v0, base:Ljava/lang/String;
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    invoke-static {v0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_81
    .catchall {:try_start_9 .. :try_end_81} :catchall_87

    move-result-object v8

    monitor-exit p0

    return-object v8

    .line 389
    .end local v0           #base:Ljava/lang/String;
    .end local v1           #buffer:Ljava/lang/StringBuffer;
    .end local v3           #id:Ljava/lang/String;
    .end local v4           #language:Ljava/lang/String;
    .end local v5           #locale:Ljava/util/Locale;
    .end local v7           #version:Ljava/lang/String;
    :catchall_84
    move-exception v9

    :try_start_85
    monitor-exit v8
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_84

    :try_start_86
    throw v9
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_87

    .line 387
    :catchall_87
    move-exception v8

    monitor-exit p0

    throw v8

    .line 397
    .restart local v1       #buffer:Ljava/lang/StringBuffer;
    .restart local v5       #locale:Ljava/util/Locale;
    .restart local v7       #version:Ljava/lang/String;
    :cond_8a
    :try_start_8a
    const-string v8, "1.0"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_19

    .line 410
    .restart local v4       #language:Ljava/lang/String;
    :cond_90
    const-string v8, "en"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_95
    .catchall {:try_start_8a .. :try_end_95} :catchall_87

    goto :goto_3d
.end method

.method private native nativeSync(I)V
.end method

.method private pin(I)I
    .registers 4
    .parameter "size"

    .prologue
    const/16 v1, 0x48

    const/4 v0, 0x1

    .line 1605
    if-ge p1, v0, :cond_6

    .line 1610
    :goto_5
    return v0

    .line 1607
    :cond_6
    if-le p1, v1, :cond_a

    move v0, v1

    .line 1608
    goto :goto_5

    :cond_a
    move v0, p1

    .line 1610
    goto :goto_5
.end method

.method private declared-synchronized postSync()V
    .registers 4

    .prologue
    .line 1616
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mSyncPending:Z

    if-nez v0, :cond_13

    .line 1617
    iget-object v0, p0, Landroid/webkit/WebSettings;->mEventHandler:Landroid/webkit/WebSettings$EventHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebSettings$EventHandler;->sendMessage(Landroid/os/Message;)Z
    invoke-static {v0, v1}, Landroid/webkit/WebSettings$EventHandler;->access$800(Landroid/webkit/WebSettings$EventHandler;Landroid/os/Message;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/webkit/WebSettings;->mSyncPending:Z
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 1620
    :cond_13
    monitor-exit p0

    return-void

    .line 1616
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private verifyNetworkAccess()V
    .registers 5

    .prologue
    .line 1153
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mBlockNetworkLoads:Z

    if-nez v0, :cond_1e

    .line 1154
    iget-object v0, p0, Landroid/webkit/WebSettings;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERNET"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_1e

    .line 1157
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Permission denied - application missing INTERNET permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1162
    :cond_1e
    return-void
.end method


# virtual methods
.method declared-synchronized getAcceptLanguage()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1484
    monitor-enter p0

    :try_start_1
    sget-object v1, Landroid/webkit/WebSettings;->sLockForLocaleSettings:Ljava/lang/Object;

    monitor-enter v1
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_20

    .line 1485
    :try_start_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 1486
    .local v0, currentLocale:Ljava/util/Locale;
    sget-object v2, Landroid/webkit/WebSettings;->sLocale:Ljava/util/Locale;

    invoke-virtual {v2, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 1487
    sput-object v0, Landroid/webkit/WebSettings;->sLocale:Ljava/util/Locale;

    .line 1488
    invoke-direct {p0}, Landroid/webkit/WebSettings;->getCurrentAcceptLanguage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/WebSettings;->mAcceptLanguage:Ljava/lang/String;

    .line 1490
    :cond_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_1d

    .line 1491
    :try_start_19
    iget-object v1, p0, Landroid/webkit/WebSettings;->mAcceptLanguage:Ljava/lang/String;
    :try_end_1b
    .catchall {:try_start_19 .. :try_end_1b} :catchall_20

    monitor-exit p0

    return-object v1

    .line 1490
    .end local v0           #currentLocale:Ljava/util/Locale;
    :catchall_1d
    move-exception v2

    :try_start_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    :try_start_1f
    throw v2
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_20

    .line 1484
    :catchall_20
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getAdvancedCopyPasteFeature()Z
    .registers 2

    .prologue
    .line 670
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mAdvanceTextSelection:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAllowContentAccess()Z
    .registers 2

    .prologue
    .line 531
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mAllowContentAccess:Z

    return v0
.end method

.method public getAllowFileAccess()Z
    .registers 2

    .prologue
    .line 513
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mAllowFileAccess:Z

    return v0
.end method

.method public declared-synchronized getBlockNetworkImage()Z
    .registers 2

    .prologue
    .line 1124
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mBlockNetworkImage:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBlockNetworkLoads()Z
    .registers 2

    .prologue
    .line 1148
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mBlockNetworkLoads:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBuiltInZoomControls()Z
    .registers 2

    .prologue
    .line 481
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mBuiltInZoomControls:Z

    return v0
.end method

.method public getCacheMode()I
    .registers 2

    .prologue
    .line 1544
    iget v0, p0, Landroid/webkit/WebSettings;->mOverrideCacheMode:I

    return v0
.end method

.method public declared-synchronized getCursiveFontFamily()Ljava/lang/String;
    .registers 2

    .prologue
    .line 963
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/webkit/WebSettings;->mCursiveFontFamily:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDatabaseEnabled()Z
    .registers 2

    .prologue
    .line 1323
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mDatabaseEnabled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDatabasePath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1315
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/webkit/WebSettings;->mDatabasePath:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDefaultFixedFontSize()I
    .registers 2

    .prologue
    .line 1066
    monitor-enter p0

    :try_start_1
    iget v0, p0, Landroid/webkit/WebSettings;->mDefaultFixedFontSize:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDefaultFontSize()I
    .registers 2

    .prologue
    .line 1045
    monitor-enter p0

    :try_start_1
    iget v0, p0, Landroid/webkit/WebSettings;->mDefaultFontSize:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDefaultTextEncodingName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1428
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/webkit/WebSettings;->mDefaultTextEncoding:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDefaultZoom()Landroid/webkit/WebSettings$ZoomDensity;
    .registers 2

    .prologue
    .line 636
    iget-object v0, p0, Landroid/webkit/WebSettings;->mDefaultZoom:Landroid/webkit/WebSettings$ZoomDensity;

    return-object v0
.end method

.method public declared-synchronized getDomStorageEnabled()Z
    .registers 2

    .prologue
    .line 1306
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mDomStorageEnabled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getDoubleTapToastCount()I
    .registers 2

    .prologue
    .line 1562
    sget v0, Landroid/webkit/WebSettings;->mDoubleTapToastCount:I

    return v0
.end method

.method public getEditableSupport()Z
    .registers 2

    .prologue
    .line 687
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mEditableSupport:Z

    return v0
.end method

.method public declared-synchronized getFantasyFontFamily()Ljava/lang/String;
    .registers 2

    .prologue
    .line 982
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/webkit/WebSettings;->mFantasyFontFamily:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFixedFontFamily()Ljava/lang/String;
    .registers 2

    .prologue
    .line 906
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/webkit/WebSettings;->mFixedFontFamily:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getJavaScriptCanOpenWindowsAutomatically()Z
    .registers 2

    .prologue
    .line 1409
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mJavaScriptCanOpenWindowsAutomatically:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getJavaScriptEnabled()Z
    .registers 2

    .prologue
    .line 1356
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mJavaScriptEnabled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLayoutAlgorithm()Landroid/webkit/WebSettings$LayoutAlgorithm;
    .registers 2

    .prologue
    .line 868
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/webkit/WebSettings;->mLayoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLightTouchEnabled()Z
    .registers 2

    .prologue
    .line 650
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mLightTouchEnabled:Z

    return v0
.end method

.method public getLoadWithOverviewMode()Z
    .registers 2

    .prologue
    .line 545
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mLoadWithOverviewMode:Z

    return v0
.end method

.method public declared-synchronized getLoadsImagesAutomatically()Z
    .registers 2

    .prologue
    .line 1100
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mLoadsImagesAutomatically:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMinimumFontSize()I
    .registers 2

    .prologue
    .line 1003
    monitor-enter p0

    :try_start_1
    iget v0, p0, Landroid/webkit/WebSettings;->mMinimumFontSize:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMinimumLogicalFontSize()I
    .registers 2

    .prologue
    .line 1024
    monitor-enter p0

    :try_start_1
    iget v0, p0, Landroid/webkit/WebSettings;->mMinimumLogicalFontSize:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNavDump()Z
    .registers 2

    .prologue
    .line 451
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mNavDump:Z

    return v0
.end method

.method getNeedInitialFocus()Z
    .registers 2

    .prologue
    .line 1508
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mNeedInitialFocus:Z

    return v0
.end method

.method public declared-synchronized getPluginState()Landroid/webkit/WebSettings$PluginState;
    .registers 2

    .prologue
    .line 1374
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/webkit/WebSettings;->mPluginState:Landroid/webkit/WebSettings$PluginState;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPluginsEnabled()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1366
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/webkit/WebSettings;->mPluginState:Landroid/webkit/WebSettings$PluginState;

    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_c

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_8
    monitor-exit p0

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_8

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPluginsPath()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1386
    monitor-enter p0

    :try_start_1
    const-string v0, ""
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSansSerifFontFamily()Ljava/lang/String;
    .registers 2

    .prologue
    .line 925
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/webkit/WebSettings;->mSansSerifFontFamily:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSaveFormData()Z
    .registers 2

    .prologue
    .line 576
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mSaveFormData:Z

    return v0
.end method

.method public getSavePassword()Z
    .registers 2

    .prologue
    .line 590
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mSavePassword:Z

    return v0
.end method

.method public declared-synchronized getSerifFontFamily()Ljava/lang/String;
    .registers 2

    .prologue
    .line 944
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/webkit/WebSettings;->mSerifFontFamily:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getStandardFontFamily()Ljava/lang/String;
    .registers 2

    .prologue
    .line 887
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/webkit/WebSettings;->mStandardFontFamily:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSupportZoomWithoutControls()Z
    .registers 2

    .prologue
    .line 496
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mSupportZoomWithoutControls:Z

    return v0
.end method

.method public declared-synchronized getTextSize()Landroid/webkit/WebSettings$TextSize;
    .registers 2

    .prologue
    .line 613
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/webkit/WebSettings;->mTextSize:Landroid/webkit/WebSettings$TextSize;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUseDoubleTree()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 706
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method

.method public getUseWebViewBackgroundForOverscrollBackground()Z
    .registers 2

    .prologue
    .line 562
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mUseWebViewBackgroundOverscrollBackground:Z

    return v0
.end method

.method public declared-synchronized getUseWideViewPort()Z
    .registers 2

    .prologue
    .line 771
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mUseWideViewport:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUserAgent()I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 747
    monitor-enter p0

    :try_start_1
    const-string v0, "Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_7; en-us) AppleWebKit/530.17 (KHTML, like Gecko) Version/4.0 Safari/530.17"

    iget-object v1, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_22

    move-result v0

    if-eqz v0, :cond_e

    .line 748
    const/4 v0, 0x1

    .line 754
    :goto_c
    monitor-exit p0

    return v0

    .line 749
    :cond_e
    :try_start_e
    const-string v0, "Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16"

    iget-object v1, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 750
    const/4 v0, 0x2

    goto :goto_c

    .line 751
    :cond_1a
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mUseDefaultUserAgent:Z
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_22

    if-eqz v0, :cond_20

    .line 752
    const/4 v0, 0x0

    goto :goto_c

    .line 754
    :cond_20
    const/4 v0, -0x1

    goto :goto_c

    .line 747
    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUserAgentString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1460
    monitor-enter p0

    :try_start_1
    const-string v2, "Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_7; en-us) AppleWebKit/530.17 (KHTML, like Gecko) Version/4.0 Safari/530.17"

    iget-object v3, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16"

    iget-object v3, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    iget-boolean v2, p0, Landroid/webkit/WebSettings;->mUseDefaultUserAgent:Z

    if-nez v2, :cond_1d

    .line 1463
    :cond_19
    iget-object v2, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_48

    .line 1479
    :goto_1b
    monitor-exit p0

    return-object v2

    .line 1466
    :cond_1d
    const/4 v1, 0x0

    .line 1467
    .local v1, doPostSync:Z
    :try_start_1e
    sget-object v2, Landroid/webkit/WebSettings;->sLockForLocaleSettings:Ljava/lang/Object;

    monitor-enter v2
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_48

    .line 1468
    :try_start_21
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 1469
    .local v0, currentLocale:Ljava/util/Locale;
    sget-object v3, Landroid/webkit/WebSettings;->sLocale:Ljava/util/Locale;

    invoke-virtual {v3, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    .line 1470
    sput-object v0, Landroid/webkit/WebSettings;->sLocale:Ljava/util/Locale;

    .line 1471
    invoke-direct {p0}, Landroid/webkit/WebSettings;->getCurrentUserAgent()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;

    .line 1472
    invoke-direct {p0}, Landroid/webkit/WebSettings;->getCurrentAcceptLanguage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/webkit/WebSettings;->mAcceptLanguage:Ljava/lang/String;

    .line 1473
    const/4 v1, 0x1

    .line 1475
    :cond_3c
    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_21 .. :try_end_3d} :catchall_45

    .line 1476
    if-eqz v1, :cond_42

    .line 1477
    :try_start_3f
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V

    .line 1479
    :cond_42
    iget-object v2, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;
    :try_end_44
    .catchall {:try_start_3f .. :try_end_44} :catchall_48

    goto :goto_1b

    .line 1475
    .end local v0           #currentLocale:Ljava/util/Locale;
    :catchall_45
    move-exception v3

    :try_start_46
    monitor-exit v2
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    :try_start_47
    throw v3
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_48

    .line 1460
    .end local v1           #doPostSync:Z
    :catchall_48
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized onDestroyed()V
    .registers 1

    .prologue
    .line 1601
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setAdvancedCopyPasteFeature(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 659
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mAdvanceTextSelection:Z

    if-eq v0, p1, :cond_a

    .line 660
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mAdvanceTextSelection:Z

    .line 661
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 663
    :cond_a
    monitor-exit p0

    return-void

    .line 659
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAllowContentAccess(Z)V
    .registers 2
    .parameter "allow"

    .prologue
    .line 523
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mAllowContentAccess:Z

    .line 524
    return-void
.end method

.method public setAllowFileAccess(Z)V
    .registers 2
    .parameter "allow"

    .prologue
    .line 506
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mAllowFileAccess:Z

    .line 507
    return-void
.end method

.method public declared-synchronized setAppCacheEnabled(Z)V
    .registers 3
    .parameter "flag"

    .prologue
    .line 1246
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mAppCacheEnabled:Z

    if-eq v0, p1, :cond_a

    .line 1247
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mAppCacheEnabled:Z

    .line 1248
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 1250
    :cond_a
    monitor-exit p0

    return-void

    .line 1246
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAppCacheMaxSize(J)V
    .registers 5
    .parameter "appCacheMaxSize"

    .prologue
    .line 1271
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Landroid/webkit/WebSettings;->mAppCacheMaxSize:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_c

    .line 1272
    iput-wide p1, p0, Landroid/webkit/WebSettings;->mAppCacheMaxSize:J

    .line 1273
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 1275
    :cond_c
    monitor-exit p0

    return-void

    .line 1271
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAppCachePath(Ljava/lang/String;)V
    .registers 3
    .parameter "appCachePath"

    .prologue
    .line 1260
    monitor-enter p0

    if-eqz p1, :cond_10

    :try_start_3
    iget-object v0, p0, Landroid/webkit/WebSettings;->mAppCachePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1261
    iput-object p1, p0, Landroid/webkit/WebSettings;->mAppCachePath:Ljava/lang/String;

    .line 1262
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    .line 1264
    :cond_10
    monitor-exit p0

    return-void

    .line 1260
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBlockNetworkImage(Z)V
    .registers 3
    .parameter "flag"

    .prologue
    .line 1112
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mBlockNetworkImage:Z

    if-eq v0, p1, :cond_a

    .line 1113
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mBlockNetworkImage:Z

    .line 1114
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 1116
    :cond_a
    monitor-exit p0

    return-void

    .line 1112
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBlockNetworkLoads(Z)V
    .registers 3
    .parameter "flag"

    .prologue
    .line 1136
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mBlockNetworkLoads:Z

    if-eq v0, p1, :cond_a

    .line 1137
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mBlockNetworkLoads:Z

    .line 1138
    invoke-direct {p0}, Landroid/webkit/WebSettings;->verifyNetworkAccess()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 1140
    :cond_a
    monitor-exit p0

    return-void

    .line 1136
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setBuiltInZoomControls(Z)V
    .registers 4
    .parameter "enabled"

    .prologue
    .line 473
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mBuiltInZoomControls:Z

    .line 474
    iget-object v0, p0, Landroid/webkit/WebSettings;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Landroid/webkit/WebSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->updateMultiTouchSupport(Landroid/content/Context;)V

    .line 475
    return-void
.end method

.method public setCacheMode(I)V
    .registers 3
    .parameter "mode"

    .prologue
    .line 1534
    iget v0, p0, Landroid/webkit/WebSettings;->mOverrideCacheMode:I

    if-eq p1, v0, :cond_6

    .line 1535
    iput p1, p0, Landroid/webkit/WebSettings;->mOverrideCacheMode:I

    .line 1537
    :cond_6
    return-void
.end method

.method public declared-synchronized setCursiveFontFamily(Ljava/lang/String;)V
    .registers 3
    .parameter "font"

    .prologue
    .line 952
    monitor-enter p0

    if-eqz p1, :cond_10

    :try_start_3
    iget-object v0, p0, Landroid/webkit/WebSettings;->mCursiveFontFamily:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 953
    iput-object p1, p0, Landroid/webkit/WebSettings;->mCursiveFontFamily:Ljava/lang/String;

    .line 954
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    .line 956
    :cond_10
    monitor-exit p0

    return-void

    .line 952
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDatabaseEnabled(Z)V
    .registers 3
    .parameter "flag"

    .prologue
    .line 1283
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mDatabaseEnabled:Z

    if-eq v0, p1, :cond_a

    .line 1284
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mDatabaseEnabled:Z

    .line 1285
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 1287
    :cond_a
    monitor-exit p0

    return-void

    .line 1283
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDatabasePath(Ljava/lang/String;)V
    .registers 3
    .parameter "databasePath"

    .prologue
    .line 1219
    monitor-enter p0

    if-eqz p1, :cond_f

    :try_start_3
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mDatabasePathHasBeenSet:Z

    if-nez v0, :cond_f

    .line 1220
    iput-object p1, p0, Landroid/webkit/WebSettings;->mDatabasePath:Ljava/lang/String;

    .line 1221
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebSettings;->mDatabasePathHasBeenSet:Z

    .line 1222
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_11

    .line 1224
    :cond_f
    monitor-exit p0

    return-void

    .line 1219
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDebugCache(Z)V
    .registers 3
    .parameter "setDebugCache"

    .prologue
    .line 775
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mDebugCache:Z

    if-eq v0, p1, :cond_13

    .line 776
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mDebugCache:Z

    .line 778
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mDebugCache:Z

    sput-boolean v0, Landroid/webkit/DebugFlags;->CACHE_MANAGER:Z

    .line 779
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mDebugCache:Z

    sput-boolean v0, Landroid/webkit/DebugFlags;->COOKIE_MANAGER:Z

    .line 780
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mDebugCache:Z

    sput-boolean v0, Landroid/webkit/DebugFlags;->COOKIE_SYNC_MANAGER:Z
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 783
    :cond_13
    monitor-exit p0

    return-void

    .line 775
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDebugInfo(Z)V
    .registers 3
    .parameter "setDebugInfo"

    .prologue
    .line 812
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mDebugInfo:Z

    if-eq v0, p1, :cond_1b

    .line 813
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mDebugInfo:Z

    .line 815
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mDebugInfo:Z

    sput-boolean v0, Landroid/webkit/DebugFlags;->WEB_SETTINGS:Z

    .line 816
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mDebugInfo:Z

    sput-boolean v0, Landroid/webkit/DebugFlags;->WEB_TEXT_VIEW:Z

    .line 817
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mDebugInfo:Z

    sput-boolean v0, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    .line 818
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mDebugInfo:Z

    sput-boolean v0, Landroid/webkit/DebugFlags;->WEB_VIEW_CORE:Z

    .line 819
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mDebugInfo:Z

    sput-boolean v0, Landroid/webkit/DebugFlags;->WEB_BACK_FORWARD_LIST:Z
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    .line 822
    :cond_1b
    monitor-exit p0

    return-void

    .line 812
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDebugNetwork(Z)V
    .registers 3
    .parameter "setDebugNetwork"

    .prologue
    .line 786
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mDebugNetwork:Z

    if-eq v0, p1, :cond_17

    .line 787
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mDebugNetwork:Z

    .line 789
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mDebugNetwork:Z

    sput-boolean v0, Landroid/webkit/DebugFlags;->LOAD_LISTENER:Z

    .line 790
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mDebugNetwork:Z

    sput-boolean v0, Landroid/webkit/DebugFlags;->NETWORK:Z

    .line 791
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mDebugNetwork:Z

    sput-boolean v0, Landroid/webkit/DebugFlags;->SSL_ERROR_HANDLER:Z

    .line 792
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mDebugNetwork:Z

    sput-boolean v0, Landroid/webkit/DebugFlags;->FRAME_LOADER:Z
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 795
    :cond_17
    monitor-exit p0

    return-void

    .line 786
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDebugVervose(Z)V
    .registers 3
    .parameter "setDebugVervose"

    .prologue
    .line 798
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mDebugVervose:Z

    if-eq v0, p1, :cond_1f

    .line 799
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mDebugVervose:Z

    .line 801
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mDebugVervose:Z

    sput-boolean v0, Landroid/webkit/DebugFlags;->BROWSER_FRAME:Z

    .line 802
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mDebugVervose:Z

    sput-boolean v0, Landroid/webkit/DebugFlags;->CALLBACK_PROXY:Z

    .line 803
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mDebugVervose:Z

    sput-boolean v0, Landroid/webkit/DebugFlags;->WEB_SYNC_MANAGER:Z

    .line 804
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mDebugVervose:Z

    sput-boolean v0, Landroid/webkit/DebugFlags;->DRAG_TRACKER:Z

    .line 805
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mDebugVervose:Z

    sput-boolean v0, Landroid/webkit/DebugFlags;->STREAM_LOADER:Z

    .line 806
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mDebugVervose:Z

    sput-boolean v0, Landroid/webkit/DebugFlags;->URL_UTIL:Z
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    .line 809
    :cond_1f
    monitor-exit p0

    return-void

    .line 798
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDefaultFixedFontSize(I)V
    .registers 3
    .parameter "size"

    .prologue
    .line 1054
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Landroid/webkit/WebSettings;->pin(I)I

    move-result p1

    .line 1055
    iget v0, p0, Landroid/webkit/WebSettings;->mDefaultFixedFontSize:I

    if-eq v0, p1, :cond_e

    .line 1056
    iput p1, p0, Landroid/webkit/WebSettings;->mDefaultFixedFontSize:I

    .line 1057
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 1059
    :cond_e
    monitor-exit p0

    return-void

    .line 1054
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDefaultFontSize(I)V
    .registers 3
    .parameter "size"

    .prologue
    .line 1033
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Landroid/webkit/WebSettings;->pin(I)I

    move-result p1

    .line 1034
    iget v0, p0, Landroid/webkit/WebSettings;->mDefaultFontSize:I

    if-eq v0, p1, :cond_e

    .line 1035
    iput p1, p0, Landroid/webkit/WebSettings;->mDefaultFontSize:I

    .line 1036
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 1038
    :cond_e
    monitor-exit p0

    return-void

    .line 1033
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDefaultTextEncodingName(Ljava/lang/String;)V
    .registers 3
    .parameter "encoding"

    .prologue
    .line 1417
    monitor-enter p0

    if-eqz p1, :cond_10

    :try_start_3
    iget-object v0, p0, Landroid/webkit/WebSettings;->mDefaultTextEncoding:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1418
    iput-object p1, p0, Landroid/webkit/WebSettings;->mDefaultTextEncoding:Ljava/lang/String;

    .line 1419
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    .line 1421
    :cond_10
    monitor-exit p0

    return-void

    .line 1417
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V
    .registers 4
    .parameter "zoom"

    .prologue
    .line 623
    iget-object v0, p0, Landroid/webkit/WebSettings;->mDefaultZoom:Landroid/webkit/WebSettings$ZoomDensity;

    if-eq v0, p1, :cond_d

    .line 624
    iput-object p1, p0, Landroid/webkit/WebSettings;->mDefaultZoom:Landroid/webkit/WebSettings$ZoomDensity;

    .line 625
    iget-object v0, p0, Landroid/webkit/WebSettings;->mWebView:Landroid/webkit/WebView;

    iget v1, p1, Landroid/webkit/WebSettings$ZoomDensity;->value:I

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->updateDefaultZoomDensity(I)V

    .line 627
    :cond_d
    return-void
.end method

.method public declared-synchronized setDomStorageEnabled(Z)V
    .registers 3
    .parameter "flag"

    .prologue
    .line 1295
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mDomStorageEnabled:Z

    if-eq v0, p1, :cond_a

    .line 1296
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mDomStorageEnabled:Z

    .line 1297
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 1299
    :cond_a
    monitor-exit p0

    return-void

    .line 1295
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setDoubleTapToastCount(I)V
    .registers 5
    .parameter "count"

    .prologue
    .line 1566
    sget v0, Landroid/webkit/WebSettings;->mDoubleTapToastCount:I

    if-eq v0, p1, :cond_11

    .line 1567
    sput p1, Landroid/webkit/WebSettings;->mDoubleTapToastCount:I

    .line 1569
    iget-object v0, p0, Landroid/webkit/WebSettings;->mEventHandler:Landroid/webkit/WebSettings$EventHandler;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebSettings$EventHandler;->sendMessage(Landroid/os/Message;)Z
    invoke-static {v0, v1}, Landroid/webkit/WebSettings$EventHandler;->access$800(Landroid/webkit/WebSettings$EventHandler;Landroid/os/Message;)Z

    .line 1572
    :cond_11
    return-void
.end method

.method public setEditableSupport(Z)V
    .registers 2
    .parameter "enabled"

    .prologue
    .line 679
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mEditableSupport:Z

    .line 680
    return-void
.end method

.method public declared-synchronized setFantasyFontFamily(Ljava/lang/String;)V
    .registers 3
    .parameter "font"

    .prologue
    .line 971
    monitor-enter p0

    if-eqz p1, :cond_10

    :try_start_3
    iget-object v0, p0, Landroid/webkit/WebSettings;->mFantasyFontFamily:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 972
    iput-object p1, p0, Landroid/webkit/WebSettings;->mFantasyFontFamily:Ljava/lang/String;

    .line 973
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    .line 975
    :cond_10
    monitor-exit p0

    return-void

    .line 971
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setFixedFontFamily(Ljava/lang/String;)V
    .registers 3
    .parameter "font"

    .prologue
    .line 895
    monitor-enter p0

    if-eqz p1, :cond_10

    :try_start_3
    iget-object v0, p0, Landroid/webkit/WebSettings;->mFixedFontFamily:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 896
    iput-object p1, p0, Landroid/webkit/WebSettings;->mFixedFontFamily:Ljava/lang/String;

    .line 897
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    .line 899
    :cond_10
    monitor-exit p0

    return-void

    .line 895
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setGeolocationDatabasePath(Ljava/lang/String;)V
    .registers 3
    .parameter "databasePath"

    .prologue
    .line 1234
    monitor-enter p0

    if-eqz p1, :cond_10

    :try_start_3
    iget-object v0, p0, Landroid/webkit/WebSettings;->mGeolocationDatabasePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1236
    iput-object p1, p0, Landroid/webkit/WebSettings;->mGeolocationDatabasePath:Ljava/lang/String;

    .line 1237
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    .line 1239
    :cond_10
    monitor-exit p0

    return-void

    .line 1234
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setGeolocationEnabled(Z)V
    .registers 3
    .parameter "flag"

    .prologue
    .line 1345
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mGeolocationEnabled:Z

    if-eq v0, p1, :cond_a

    .line 1346
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mGeolocationEnabled:Z

    .line 1347
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 1349
    :cond_a
    monitor-exit p0

    return-void

    .line 1345
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setJavaScriptCanOpenWindowsAutomatically(Z)V
    .registers 3
    .parameter "flag"

    .prologue
    .line 1396
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mJavaScriptCanOpenWindowsAutomatically:Z

    if-eq v0, p1, :cond_a

    .line 1397
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mJavaScriptCanOpenWindowsAutomatically:Z

    .line 1398
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 1400
    :cond_a
    monitor-exit p0

    return-void

    .line 1396
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setJavaScriptEnabled(Z)V
    .registers 3
    .parameter "flag"

    .prologue
    .line 1169
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mJavaScriptEnabled:Z

    if-eq v0, p1, :cond_a

    .line 1170
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mJavaScriptEnabled:Z

    .line 1171
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 1173
    :cond_a
    monitor-exit p0

    return-void

    .line 1169
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V
    .registers 3
    .parameter "l"

    .prologue
    .line 855
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/webkit/WebSettings;->mLayoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    if-eq v0, p1, :cond_a

    .line 856
    iput-object p1, p0, Landroid/webkit/WebSettings;->mLayoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 857
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 859
    :cond_a
    monitor-exit p0

    return-void

    .line 855
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setLightTouchEnabled(Z)V
    .registers 2
    .parameter "enabled"

    .prologue
    .line 643
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mLightTouchEnabled:Z

    .line 644
    return-void
.end method

.method public setLoadWithOverviewMode(Z)V
    .registers 2
    .parameter "overview"

    .prologue
    .line 538
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mLoadWithOverviewMode:Z

    .line 539
    return-void
.end method

.method public declared-synchronized setLoadsImagesAutomatically(Z)V
    .registers 3
    .parameter "flag"

    .prologue
    .line 1088
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mLoadsImagesAutomatically:Z

    if-eq v0, p1, :cond_a

    .line 1089
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mLoadsImagesAutomatically:Z

    .line 1090
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 1092
    :cond_a
    monitor-exit p0

    return-void

    .line 1088
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMinimumFontSize(I)V
    .registers 3
    .parameter "size"

    .prologue
    .line 991
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Landroid/webkit/WebSettings;->pin(I)I

    move-result p1

    .line 992
    iget v0, p0, Landroid/webkit/WebSettings;->mMinimumFontSize:I

    if-eq v0, p1, :cond_e

    .line 993
    iput p1, p0, Landroid/webkit/WebSettings;->mMinimumFontSize:I

    .line 994
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 996
    :cond_e
    monitor-exit p0

    return-void

    .line 991
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMinimumLogicalFontSize(I)V
    .registers 3
    .parameter "size"

    .prologue
    .line 1012
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Landroid/webkit/WebSettings;->pin(I)I

    move-result p1

    .line 1013
    iget v0, p0, Landroid/webkit/WebSettings;->mMinimumLogicalFontSize:I

    if-eq v0, p1, :cond_e

    .line 1014
    iput p1, p0, Landroid/webkit/WebSettings;->mMinimumLogicalFontSize:I

    .line 1015
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 1017
    :cond_e
    monitor-exit p0

    return-void

    .line 1012
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setNavDump(Z)V
    .registers 2
    .parameter "enabled"

    .prologue
    .line 444
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mNavDump:Z

    .line 445
    return-void
.end method

.method public setNeedInitialFocus(Z)V
    .registers 3
    .parameter "flag"

    .prologue
    .line 1501
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mNeedInitialFocus:Z

    if-eq v0, p1, :cond_6

    .line 1502
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mNeedInitialFocus:Z

    .line 1504
    :cond_6
    return-void
.end method

.method public declared-synchronized setPageCacheCapacity(I)V
    .registers 3
    .parameter "size"

    .prologue
    .line 1075
    monitor-enter p0

    if-gez p1, :cond_4

    const/4 p1, 0x0

    .line 1076
    :cond_4
    const/16 v0, 0x14

    if-le p1, v0, :cond_a

    const/16 p1, 0x14

    .line 1077
    :cond_a
    :try_start_a
    iget v0, p0, Landroid/webkit/WebSettings;->mPageCacheCapacity:I

    if-eq v0, p1, :cond_13

    .line 1078
    iput p1, p0, Landroid/webkit/WebSettings;->mPageCacheCapacity:I

    .line 1079
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_15

    .line 1081
    :cond_13
    monitor-exit p0

    return-void

    .line 1075
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPluginState(Landroid/webkit/WebSettings$PluginState;)V
    .registers 3
    .parameter "state"

    .prologue
    .line 1194
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/webkit/WebSettings;->mPluginState:Landroid/webkit/WebSettings$PluginState;

    if-eq v0, p1, :cond_a

    .line 1195
    iput-object p1, p0, Landroid/webkit/WebSettings;->mPluginState:Landroid/webkit/WebSettings$PluginState;

    .line 1196
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 1198
    :cond_a
    monitor-exit p0

    return-void

    .line 1194
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPluginsEnabled(Z)V
    .registers 3
    .parameter "flag"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1183
    monitor-enter p0

    :try_start_1
    sget-object v0, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 1184
    monitor-exit p0

    return-void

    .line 1183
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPluginsPath(Ljava/lang/String;)V
    .registers 2
    .parameter "pluginsPath"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1209
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V
    .registers 5
    .parameter "priority"

    .prologue
    .line 1518
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/webkit/WebSettings;->mRenderPriority:Landroid/webkit/WebSettings$RenderPriority;

    if-eq v0, p1, :cond_12

    .line 1519
    iput-object p1, p0, Landroid/webkit/WebSettings;->mRenderPriority:Landroid/webkit/WebSettings$RenderPriority;

    .line 1520
    iget-object v0, p0, Landroid/webkit/WebSettings;->mEventHandler:Landroid/webkit/WebSettings$EventHandler;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebSettings$EventHandler;->sendMessage(Landroid/os/Message;)Z
    invoke-static {v0, v1}, Landroid/webkit/WebSettings$EventHandler;->access$800(Landroid/webkit/WebSettings$EventHandler;Landroid/os/Message;)Z
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 1523
    :cond_12
    monitor-exit p0

    return-void

    .line 1518
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSansSerifFontFamily(Ljava/lang/String;)V
    .registers 3
    .parameter "font"

    .prologue
    .line 914
    monitor-enter p0

    if-eqz p1, :cond_10

    :try_start_3
    iget-object v0, p0, Landroid/webkit/WebSettings;->mSansSerifFontFamily:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 915
    iput-object p1, p0, Landroid/webkit/WebSettings;->mSansSerifFontFamily:Ljava/lang/String;

    .line 916
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    .line 918
    :cond_10
    monitor-exit p0

    return-void

    .line 914
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSaveFormData(Z)V
    .registers 2
    .parameter "save"

    .prologue
    .line 569
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mSaveFormData:Z

    .line 570
    return-void
.end method

.method public setSavePassword(Z)V
    .registers 2
    .parameter "save"

    .prologue
    .line 583
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mSavePassword:Z

    .line 584
    return-void
.end method

.method public declared-synchronized setSerifFontFamily(Ljava/lang/String;)V
    .registers 3
    .parameter "font"

    .prologue
    .line 933
    monitor-enter p0

    if-eqz p1, :cond_10

    :try_start_3
    iget-object v0, p0, Landroid/webkit/WebSettings;->mSerifFontFamily:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 934
    iput-object p1, p0, Landroid/webkit/WebSettings;->mSerifFontFamily:Ljava/lang/String;

    .line 935
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    .line 937
    :cond_10
    monitor-exit p0

    return-void

    .line 933
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setShrinksStandaloneImagesToFit(Z)V
    .registers 3
    .parameter "shrink"

    .prologue
    .line 1555
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mShrinksStandaloneImagesToFit:Z

    if-eq v0, p1, :cond_9

    .line 1556
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mShrinksStandaloneImagesToFit:Z

    .line 1557
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V

    .line 1559
    :cond_9
    return-void
.end method

.method public declared-synchronized setStandardFontFamily(Ljava/lang/String;)V
    .registers 3
    .parameter "font"

    .prologue
    .line 876
    monitor-enter p0

    if-eqz p1, :cond_10

    :try_start_3
    iget-object v0, p0, Landroid/webkit/WebSettings;->mStandardFontFamily:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 877
    iput-object p1, p0, Landroid/webkit/WebSettings;->mStandardFontFamily:Ljava/lang/String;

    .line 878
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    .line 880
    :cond_10
    monitor-exit p0

    return-void

    .line 876
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSupportMultipleWindows(Z)V
    .registers 3
    .parameter "support"

    .prologue
    .line 831
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mSupportMultipleWindows:Z

    if-eq v0, p1, :cond_a

    .line 832
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mSupportMultipleWindows:Z

    .line 833
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 835
    :cond_a
    monitor-exit p0

    return-void

    .line 831
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSupportZoom(Z)V
    .registers 4
    .parameter "support"

    .prologue
    .line 458
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mSupportZoom:Z

    .line 459
    iget-object v0, p0, Landroid/webkit/WebSettings;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Landroid/webkit/WebSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->updateMultiTouchSupport(Landroid/content/Context;)V

    .line 460
    return-void
.end method

.method public setSupportZoomWithoutControls(Z)V
    .registers 4
    .parameter "enabled"

    .prologue
    .line 488
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mSupportZoomWithoutControls:Z

    .line 489
    iget-object v0, p0, Landroid/webkit/WebSettings;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Landroid/webkit/WebSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->updateMultiTouchSupport(Landroid/content/Context;)V

    .line 490
    return-void
.end method

.method public declared-synchronized setTextSize(Landroid/webkit/WebSettings$TextSize;)V
    .registers 6
    .parameter "t"

    .prologue
    .line 599
    monitor-enter p0

    :try_start_1
    sget-boolean v0, Landroid/webkit/WebView;->mLogEvent:Z

    if-eqz v0, :cond_26

    iget-object v0, p0, Landroid/webkit/WebSettings;->mTextSize:Landroid/webkit/WebSettings$TextSize;

    if-eq v0, p1, :cond_26

    .line 600
    const v0, 0x11207

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/webkit/WebSettings;->mTextSize:Landroid/webkit/WebSettings$TextSize;

    iget v3, v3, Landroid/webkit/WebSettings$TextSize;->value:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p1, Landroid/webkit/WebSettings$TextSize;->value:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 603
    :cond_26
    iput-object p1, p0, Landroid/webkit/WebSettings;->mTextSize:Landroid/webkit/WebSettings$TextSize;

    .line 604
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2d

    .line 605
    monitor-exit p0

    return-void

    .line 599
    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUseDoubleTree(Z)V
    .registers 2
    .parameter "use"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 697
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public setUseWebViewBackgroundForOverscrollBackground(Z)V
    .registers 2
    .parameter "view"

    .prologue
    .line 554
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mUseWebViewBackgroundOverscrollBackground:Z

    .line 555
    return-void
.end method

.method public declared-synchronized setUseWideViewPort(Z)V
    .registers 3
    .parameter "use"

    .prologue
    .line 761
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mUseWideViewport:Z

    if-eq v0, p1, :cond_a

    .line 762
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mUseWideViewport:Z

    .line 763
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 765
    :cond_a
    monitor-exit p0

    return-void

    .line 761
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUserAgent(I)V
    .registers 5
    .parameter "ua"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 718
    monitor-enter p0

    const/4 v0, 0x0

    .line 719
    .local v0, uaString:Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1a

    .line 720
    :try_start_5
    const-string v1, "Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_7; en-us) AppleWebKit/530.17 (KHTML, like Gecko) Version/4.0 Safari/530.17"

    iget-object v2, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_17

    move-result v1

    if-eqz v1, :cond_11

    .line 735
    :cond_f
    :goto_f
    monitor-exit p0

    return-void

    .line 723
    :cond_11
    :try_start_11
    const-string v0, "Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_7; en-us) AppleWebKit/530.17 (KHTML, like Gecko) Version/4.0 Safari/530.17"

    .line 734
    :cond_13
    :goto_13
    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_17

    goto :goto_f

    .line 718
    :catchall_17
    move-exception v1

    monitor-exit p0

    throw v1

    .line 725
    :cond_1a
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2a

    .line 726
    :try_start_1d
    const-string v1, "Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16"

    iget-object v2, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 729
    const-string v0, "Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16"
    :try_end_29
    .catchall {:try_start_1d .. :try_end_29} :catchall_17

    goto :goto_13

    .line 731
    :cond_2a
    if-eqz p1, :cond_13

    goto :goto_f
.end method

.method public declared-synchronized setUserAgentString(Ljava/lang/String;)V
    .registers 5
    .parameter "ua"

    .prologue
    .line 1436
    monitor-enter p0

    if-eqz p1, :cond_9

    :try_start_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3d

    .line 1437
    :cond_9
    sget-object v1, Landroid/webkit/WebSettings;->sLockForLocaleSettings:Ljava/lang/Object;

    monitor-enter v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_3a

    .line 1438
    :try_start_c
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 1439
    .local v0, currentLocale:Ljava/util/Locale;
    sget-object v2, Landroid/webkit/WebSettings;->sLocale:Ljava/util/Locale;

    invoke-virtual {v2, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 1440
    sput-object v0, Landroid/webkit/WebSettings;->sLocale:Ljava/util/Locale;

    .line 1441
    invoke-direct {p0}, Landroid/webkit/WebSettings;->getCurrentAcceptLanguage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/WebSettings;->mAcceptLanguage:Ljava/lang/String;

    .line 1443
    :cond_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_37

    .line 1444
    :try_start_21
    invoke-direct {p0}, Landroid/webkit/WebSettings;->getCurrentUserAgent()Ljava/lang/String;

    move-result-object p1

    .line 1445
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mUseDefaultUserAgent:Z

    .line 1450
    .end local v0           #currentLocale:Ljava/util/Locale;
    :goto_28
    iget-object v1, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 1451
    iput-object p1, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;

    .line 1452
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_35
    .catchall {:try_start_21 .. :try_end_35} :catchall_3a

    .line 1454
    :cond_35
    monitor-exit p0

    return-void

    .line 1443
    :catchall_37
    move-exception v2

    :try_start_38
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    :try_start_39
    throw v2
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_3a

    .line 1436
    :catchall_3a
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1447
    :cond_3d
    const/4 v1, 0x0

    :try_start_3e
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mUseDefaultUserAgent:Z
    :try_end_40
    .catchall {:try_start_3e .. :try_end_40} :catchall_3a

    goto :goto_28
.end method

.method public declared-synchronized setWorkersEnabled(Z)V
    .registers 3
    .parameter "flag"

    .prologue
    .line 1334
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mWorkersEnabled:Z

    if-eq v0, p1, :cond_a

    .line 1335
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mWorkersEnabled:Z

    .line 1336
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 1338
    :cond_a
    monitor-exit p0

    return-void

    .line 1334
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized supportMultipleWindows()Z
    .registers 2

    .prologue
    .line 843
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mSupportMultipleWindows:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public supportZoom()Z
    .registers 2

    .prologue
    .line 466
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mSupportZoom:Z

    return v0
.end method

.method declared-synchronized syncSettingsAndCreateHandler(Landroid/webkit/BrowserFrame;)V
    .registers 6
    .parameter "frame"

    .prologue
    const/4 v2, 0x0

    .line 1580
    monitor-enter p0

    :try_start_2
    iput-object p1, p0, Landroid/webkit/WebSettings;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    .line 1581
    sget-boolean v1, Landroid/webkit/DebugFlags;->WEB_SETTINGS:Z

    if-eqz v1, :cond_10

    .line 1582
    iget v1, p1, Landroid/webkit/BrowserFrame;->mNativeFrame:I

    if-eqz v1, :cond_36

    const/4 v1, 0x1

    :goto_d
    invoke-static {v1}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 1585
    :cond_10
    iget-object v1, p0, Landroid/webkit/WebSettings;->mContext:Landroid/content/Context;

    const-string v2, "WebViewSettings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1587
    .local v0, sp:Landroid/content/SharedPreferences;
    sget v1, Landroid/webkit/WebSettings;->mDoubleTapToastCount:I

    if-lez v1, :cond_27

    .line 1588
    const-string v1, "double_tap_toast_count"

    sget v2, Landroid/webkit/WebSettings;->mDoubleTapToastCount:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Landroid/webkit/WebSettings;->mDoubleTapToastCount:I

    .line 1591
    :cond_27
    iget v1, p1, Landroid/webkit/BrowserFrame;->mNativeFrame:I

    invoke-direct {p0, v1}, Landroid/webkit/WebSettings;->nativeSync(I)V

    .line 1592
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mSyncPending:Z

    .line 1593
    iget-object v1, p0, Landroid/webkit/WebSettings;->mEventHandler:Landroid/webkit/WebSettings$EventHandler;

    #calls: Landroid/webkit/WebSettings$EventHandler;->createHandler()V
    invoke-static {v1}, Landroid/webkit/WebSettings$EventHandler;->access$900(Landroid/webkit/WebSettings$EventHandler;)V
    :try_end_34
    .catchall {:try_start_2 .. :try_end_34} :catchall_38

    .line 1594
    monitor-exit p0

    return-void

    .end local v0           #sp:Landroid/content/SharedPreferences;
    :cond_36
    move v1, v2

    .line 1582
    goto :goto_d

    .line 1580
    :catchall_38
    move-exception v1

    monitor-exit p0

    throw v1
.end method
