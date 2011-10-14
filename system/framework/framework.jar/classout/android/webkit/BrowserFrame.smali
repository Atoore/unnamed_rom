.class Landroid/webkit/BrowserFrame;
.super Landroid/os/Handler;
.source "BrowserFrame.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/BrowserFrame$ConfigCallback;
    }
.end annotation


# static fields
.field private static final DRAWABLEDIR:I = 0x3

.field private static final FILE_UPLOAD_LABEL:I = 0x4

.field static final FRAME_COMPLETED:I = 0x3e9

.field static final FRAME_LOADTYPE_BACK:I = 0x1

.field static final FRAME_LOADTYPE_FORWARD:I = 0x2

.field static final FRAME_LOADTYPE_INDEXEDBACKFORWARD:I = 0x3

.field static final FRAME_LOADTYPE_REDIRECT:I = 0x7

.field static final FRAME_LOADTYPE_RELOAD:I = 0x4

.field static final FRAME_LOADTYPE_RELOADALLOWINGSTALEDATA:I = 0x5

.field static final FRAME_LOADTYPE_REPLACE:I = 0x8

.field static final FRAME_LOADTYPE_SAME:I = 0x6

.field static final FRAME_LOADTYPE_STANDARD:I = 0x0

.field private static final LOADERROR:I = 0x2

.field private static final LOGTAG:Ljava/lang/String; = "webkit"

.field private static final MAX_OUTSTANDING_REQUESTS:I = 0x12c

.field private static final NODOMAIN:I = 0x1

.field static final ORIENTATION_CHANGED:I = 0x3ea

.field static final POLICY_FUNCTION:I = 0x3eb

.field static final POLICY_IGNORE:I = 0x2

.field static final POLICY_USE:I = 0x0

.field public static final QIC_OPT_FIX:Z = true

.field private static final RESET_LABEL:I = 0x5

.field private static final SUBMIT_LABEL:I = 0x6

.field private static final TRANSITION_SWITCH_THRESHOLD:I = 0x4b

.field static sConfigCallback:Landroid/webkit/BrowserFrame$ConfigCallback;

.field static sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;


# instance fields
.field private LoadFinishCount:I

.field bLoggingEnableCIQ:Z

.field protected bPageAttrCache:B

.field protected count:I

.field private dataLength:I

.field private flag:Z

.field protected flagAL34:Z

.field protected flagAL35:Z

.field protected loadFinish:Z

.field private mBlockMessages:Z

.field private final mCallbackProxy:Landroid/webkit/CallbackProxy;

.field private mCommitted:Z

.field private final mContext:Landroid/content/Context;

.field private final mDatabase:Landroid/webkit/WebViewDatabase;

.field private mFirstLayoutDone:Z

.field private mIQClient:Lcom/carrieriq/iqagent/client/IQClient;

.field private mIsMainFrame:Z

.field private mJSInterfaceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mLoadInitFromJava:Z

.field private mLoadType:I

.field mNativeFrame:I

.field private mOrientation:I

.field private mOrientationChange:Z

.field private final mSettings:Landroid/webkit/WebSettings;

.field private final mWebViewCore:Landroid/webkit/WebViewCore;

.field protected webkitDrawCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebViewCore;Landroid/webkit/CallbackProxy;Landroid/webkit/WebSettings;Ljava/util/Map;)V
    .registers 11
    .parameter "context"
    .parameter "w"
    .parameter "proxy"
    .parameter "settings"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/webkit/WebViewCore;",
            "Landroid/webkit/CallbackProxy;",
            "Landroid/webkit/WebSettings;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, javascriptInterfaces:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 214
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 79
    iput-boolean v2, p0, Landroid/webkit/BrowserFrame;->mFirstLayoutDone:Z

    .line 80
    iput-boolean v2, p0, Landroid/webkit/BrowserFrame;->mCommitted:Z

    .line 84
    iput-boolean v3, p0, Landroid/webkit/BrowserFrame;->mBlockMessages:Z

    .line 85
    const/4 v2, -0x1

    iput v2, p0, Landroid/webkit/BrowserFrame;->mOrientation:I

    .line 86
    iput-boolean v3, p0, Landroid/webkit/BrowserFrame;->mOrientationChange:Z

    .line 105
    iput-byte v3, p0, Landroid/webkit/BrowserFrame;->bPageAttrCache:B

    .line 216
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 220
    .local v1, appContext:Landroid/content/Context;
    sget-object v2, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v2, :cond_48

    .line 221
    new-instance v2, Landroid/webkit/JWebCoreJavaBridge;

    invoke-direct {v2}, Landroid/webkit/JWebCoreJavaBridge;-><init>()V

    sput-object v2, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    .line 223
    const-string v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 225
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v2

    const/16 v3, 0x10

    if-le v2, v3, :cond_9f

    .line 228
    sget-object v2, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    const-string/jumbo v3, "webkit.cache.size"

    const/high16 v4, 0x80

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/JWebCoreJavaBridge;->setCacheSize(I)V

    .line 237
    :goto_3f
    invoke-static {v1}, Landroid/webkit/CacheManager;->init(Landroid/content/Context;)V

    .line 239
    invoke-static {v1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 241
    invoke-static {v1}, Landroid/webkit/PluginManager;->getInstance(Landroid/content/Context;)Landroid/webkit/PluginManager;

    .line 244
    .end local v0           #am:Landroid/app/ActivityManager;
    :cond_48
    sget-object v2, Landroid/webkit/BrowserFrame;->sConfigCallback:Landroid/webkit/BrowserFrame$ConfigCallback;

    if-nez v2, :cond_61

    .line 245
    new-instance v3, Landroid/webkit/BrowserFrame$ConfigCallback;

    const-string/jumbo v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-direct {v3, v2}, Landroid/webkit/BrowserFrame$ConfigCallback;-><init>(Landroid/view/WindowManager;)V

    sput-object v3, Landroid/webkit/BrowserFrame;->sConfigCallback:Landroid/webkit/BrowserFrame$ConfigCallback;

    .line 248
    sget-object v2, Landroid/webkit/BrowserFrame;->sConfigCallback:Landroid/webkit/BrowserFrame$ConfigCallback;

    invoke-static {v2}, Landroid/view/ViewRoot;->addConfigCallback(Landroid/content/ComponentCallbacks;)V

    .line 250
    :cond_61
    sget-object v2, Landroid/webkit/BrowserFrame;->sConfigCallback:Landroid/webkit/BrowserFrame$ConfigCallback;

    invoke-virtual {v2, p0}, Landroid/webkit/BrowserFrame$ConfigCallback;->addHandler(Landroid/os/Handler;)V

    .line 252
    iput-object p5, p0, Landroid/webkit/BrowserFrame;->mJSInterfaceMap:Ljava/util/Map;

    .line 254
    iput-object p4, p0, Landroid/webkit/BrowserFrame;->mSettings:Landroid/webkit/WebSettings;

    .line 255
    iput-object p1, p0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    .line 256
    iput-object p3, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    .line 257
    invoke-static {v1}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/BrowserFrame;->mDatabase:Landroid/webkit/WebViewDatabase;

    .line 258
    iput-object p2, p0, Landroid/webkit/BrowserFrame;->mWebViewCore:Landroid/webkit/WebViewCore;

    .line 260
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 261
    .local v0, am:Landroid/content/res/AssetManager;
    invoke-virtual {p3}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v2

    invoke-direct {p0, p2, v0, v2}, Landroid/webkit/BrowserFrame;->nativeCreateFrame(Landroid/webkit/WebViewCore;Landroid/content/res/AssetManager;Landroid/webkit/WebBackForwardList;)V

    .line 267
    sget-boolean v2, Landroid/webkit/DebugFlags;->BROWSER_FRAME:Z

    if-eqz v2, :cond_9e

    .line 268
    const-string/jumbo v2, "webkit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BrowserFrame constructor: this="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_9e
    return-void

    .line 234
    .local v0, am:Landroid/app/ActivityManager;
    :cond_9f
    sget-object v2, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    const/high16 v3, 0x40

    invoke-virtual {v2, v3}, Landroid/webkit/JWebCoreJavaBridge;->setCacheSize(I)V

    goto :goto_3f
.end method

.method private closeWindow(Landroid/webkit/WebViewCore;)V
    .registers 4
    .parameter "w"

    .prologue
    .line 974
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {p1}, Landroid/webkit/WebViewCore;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/CallbackProxy;->onCloseWindow(Landroid/webkit/WebView;)V

    .line 975
    return-void
.end method

.method private createWindow(ZZ)Landroid/webkit/BrowserFrame;
    .registers 4
    .parameter "dialog"
    .parameter "userGesture"

    .prologue
    .line 960
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/CallbackProxy;->createWindow(ZZ)Landroid/webkit/BrowserFrame;

    move-result-object v0

    return-object v0
.end method

.method private decidePolicyForFormResubmission(I)V
    .registers 6
    .parameter "policyFunction"

    .prologue
    const/16 v3, 0x3eb

    .line 982
    const/4 v2, 0x2

    invoke-virtual {p0, v3, p1, v2}, Landroid/webkit/BrowserFrame;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 984
    .local v0, dontResend:Landroid/os/Message;
    const/4 v2, 0x0

    invoke-virtual {p0, v3, p1, v2}, Landroid/webkit/BrowserFrame;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 986
    .local v1, resend:Landroid/os/Message;
    iget-object v2, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v2, v0, v1}, Landroid/webkit/CallbackProxy;->onFormResubmission(Landroid/os/Message;Landroid/os/Message;)V

    .line 987
    return-void
.end method

.method private density()F
    .registers 2

    .prologue
    .line 1065
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method private didReceiveIcon(Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter "icon"

    .prologue
    .line 947
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->onReceivedIcon(Landroid/graphics/Bitmap;)V

    .line 948
    return-void
.end method

.method private didReceiveTouchIconUrl(Ljava/lang/String;Z)V
    .registers 4
    .parameter "url"
    .parameter "precomposed"

    .prologue
    .line 952
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/CallbackProxy;->onReceivedTouchIconUrl(Ljava/lang/String;Z)V

    .line 953
    return-void
.end method

.method private native documentAsText()Ljava/lang/String;
.end method

.method private native externalRepresentation()Ljava/lang/String;
.end method

.method private getFile(Ljava/lang/String;[BII)I
    .registers 12
    .parameter "uri"
    .parameter "buffer"
    .parameter "offset"
    .parameter "expectedSize"

    .prologue
    const-string/jumbo v6, "webkit"

    .line 737
    const/4 v2, 0x0

    .line 739
    .local v2, size:I
    :try_start_4
    iget-object v4, p0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 741
    .local v3, stream:Ljava/io/InputStream;
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v2

    .line 742
    if-gt v2, p4, :cond_25

    if-eqz p2, :cond_25

    array-length v4, p2

    sub-int/2addr v4, p3

    if-lt v4, v2, :cond_25

    .line 744
    invoke-virtual {v3, p2, p3, v2}, Ljava/io/InputStream;->read([BII)I

    .line 748
    :goto_21
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_24
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_24} :catch_27
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_24} :catch_44

    .line 756
    .end local v3           #stream:Ljava/io/InputStream;
    :goto_24
    return v2

    .line 746
    .restart local v3       #stream:Ljava/io/InputStream;
    :cond_25
    const/4 v2, 0x0

    goto :goto_21

    .line 749
    .end local v3           #stream:Ljava/io/InputStream;
    :catch_27
    move-exception v4

    move-object v0, v4

    .line 750
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string/jumbo v4, "webkit"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FileNotFoundException:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    const/4 v2, 0x0

    .line 755
    goto :goto_24

    .line 752
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_44
    move-exception v4

    move-object v1, v4

    .line 753
    .local v1, e2:Ljava/io/IOException;
    const-string/jumbo v4, "webkit"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    const/4 v2, 0x0

    goto :goto_24
.end method

.method private getFileSize(Ljava/lang/String;)I
    .registers 6
    .parameter "uri"

    .prologue
    .line 716
    const/4 v0, 0x0

    .line 718
    .local v0, size:I
    :try_start_1
    iget-object v2, p0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 720
    .local v1, stream:Ljava/io/InputStream;
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 721
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_16} :catch_17

    .line 723
    .end local v1           #stream:Ljava/io/InputStream;
    :goto_16
    return v0

    .line 722
    :catch_17
    move-exception v2

    goto :goto_16
.end method

.method private native getFormTextData()Ljava/util/HashMap;
.end method

.method private native getUsernamePassword()[Ljava/lang/String;
.end method

.method private native hasPasswordField()Z
.end method

.method private loadFinished(Ljava/lang/String;IZ)V
    .registers 5
    .parameter "url"
    .parameter "loadType"
    .parameter "isMainFrame"

    .prologue
    .line 493
    if-nez p3, :cond_4

    if-nez p2, :cond_13

    .line 494
    :cond_4
    if-eqz p3, :cond_13

    .line 495
    invoke-direct {p0}, Landroid/webkit/BrowserFrame;->resetLoadingStates()V

    .line 496
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->switchOutDrawHistory()V

    .line 497
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->onPageFinished(Ljava/lang/String;)V

    .line 500
    :cond_13
    return-void
.end method

.method private loadStarted(Ljava/lang/String;Landroid/graphics/Bitmap;IZ)V
    .registers 9
    .parameter "url"
    .parameter "favicon"
    .parameter "loadType"
    .parameter "isMainFrame"

    .prologue
    const/4 v3, 0x0

    .line 397
    iput-boolean p4, p0, Landroid/webkit/BrowserFrame;->mIsMainFrame:Z

    .line 434
    if-nez p4, :cond_7

    if-nez p3, :cond_40

    .line 435
    :cond_7
    iput p3, p0, Landroid/webkit/BrowserFrame;->mLoadType:I

    .line 437
    if-eqz p4, :cond_1b

    .line 439
    iget-object v2, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v2, p1, p2}, Landroid/webkit/CallbackProxy;->onPageStarted(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 442
    iput-boolean v3, p0, Landroid/webkit/BrowserFrame;->mFirstLayoutDone:Z

    .line 443
    iput-boolean v3, p0, Landroid/webkit/BrowserFrame;->mCommitted:Z

    .line 446
    iget-object v2, p0, Landroid/webkit/BrowserFrame;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0x82

    invoke-virtual {v2, v3}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 450
    :cond_1b
    if-nez p3, :cond_40

    iget-object v2, p0, Landroid/webkit/BrowserFrame;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getSaveFormData()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 452
    iget-object v2, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v2}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v1

    .line 454
    .local v1, h:Landroid/webkit/WebHistoryItem;
    if-eqz v1, :cond_40

    .line 455
    invoke-virtual {v1}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 456
    .local v0, currentUrl:Ljava/lang/String;
    if-eqz v0, :cond_40

    .line 457
    iget-object v2, p0, Landroid/webkit/BrowserFrame;->mDatabase:Landroid/webkit/WebViewDatabase;

    invoke-direct {p0}, Landroid/webkit/BrowserFrame;->getFormTextData()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/webkit/WebViewDatabase;->setFormData(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 462
    .end local v0           #currentUrl:Ljava/lang/String;
    .end local v1           #h:Landroid/webkit/WebHistoryItem;
    :cond_40
    return-void
.end method

.method private native nativeAddJavascriptInterface(ILjava/lang/Object;Ljava/lang/String;)V
.end method

.method private native nativeCallPolicyFunction(II)V
.end method

.method private native nativeCreateFrame(Landroid/webkit/WebViewCore;Landroid/content/res/AssetManager;Landroid/webkit/WebBackForwardList;)V
.end method

.method private native nativeGoBackOrForward(I)V
.end method

.method private native nativeLoadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeLoadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method private native nativeOrientationChanged(I)V
.end method

.method private native nativePostUrl(Ljava/lang/String;[B)V
.end method

.method private native nativeStopLoading()V
.end method

.method private reportError(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 360
    invoke-direct {p0}, Landroid/webkit/BrowserFrame;->resetLoadingStates()V

    .line 361
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/CallbackProxy;->onReceivedError(ILjava/lang/String;Ljava/lang/String;)V

    .line 362
    return-void
.end method

.method private requestFocus()V
    .registers 2

    .prologue
    .line 967
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->onRequestFocus()V

    .line 968
    return-void
.end method

.method private resetLoadingStates()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 365
    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mCommitted:Z

    .line 366
    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mFirstLayoutDone:Z

    .line 367
    return-void
.end method

.method private native setCacheDisabled(Z)V
.end method

.method private setProgress(I)V
    .registers 5
    .parameter "newProgress"

    .prologue
    .line 927
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->onProgressChanged(I)V

    .line 928
    const/16 v0, 0x64

    if-ne p1, v0, :cond_1f

    .line 930
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    iget-object v1, p0, Landroid/webkit/BrowserFrame;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1}, Landroid/webkit/WebViewCore;->nativeGetWebFeedLinks()[Landroid/webkit/WebFeedLink;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/CallbackProxy;->setWebFeedLinks([Landroid/webkit/WebFeedLink;)V

    .line 932
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Landroid/webkit/BrowserFrame;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Landroid/webkit/BrowserFrame;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 937
    :cond_1f
    iget-boolean v0, p0, Landroid/webkit/BrowserFrame;->mFirstLayoutDone:Z

    if-eqz v0, :cond_2c

    const/16 v0, 0x4b

    if-le p1, v0, :cond_2c

    .line 938
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->switchOutDrawHistory()V

    .line 940
    :cond_2c
    return-void
.end method

.method private setTitle(Ljava/lang/String;)V
    .registers 3
    .parameter "title"

    .prologue
    .line 634
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->onReceivedTitle(Ljava/lang/String;)V

    .line 635
    return-void
.end method

.method private native setUsernamePassword(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private startLoadingResource(ILjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;[BJIZZZLjava/lang/String;Ljava/lang/String;)Landroid/webkit/LoadListener;
    .registers 39
    .parameter "loaderHandle"
    .parameter "url"
    .parameter "method"
    .parameter "headers"
    .parameter "postData"
    .parameter "postDataIdentifier"
    .parameter "cacheMode"
    .parameter "mainResource"
    .parameter "userGesture"
    .parameter "synchronous"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 811
    new-instance v17, Landroid/webkit/PerfChecker;

    invoke-direct/range {v17 .. v17}, Landroid/webkit/PerfChecker;-><init>()V

    .line 813
    .local v17, checker:Landroid/webkit/PerfChecker;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/BrowserFrame;->mSettings:Landroid/webkit/WebSettings;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebSettings;->getCacheMode()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1a

    .line 814
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/BrowserFrame;->mSettings:Landroid/webkit/WebSettings;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebSettings;->getCacheMode()I

    move-result p8

    .line 817
    :cond_1a
    const-string v5, "POST"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_eb

    .line 820
    if-nez p8, :cond_29

    .line 821
    const/16 p8, 0x2

    .line 823
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/BrowserFrame;->mSettings:Landroid/webkit/WebSettings;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebSettings;->getSavePassword()Z

    move-result v5

    if-eqz v5, :cond_eb

    invoke-direct/range {p0 .. p0}, Landroid/webkit/BrowserFrame;->hasPasswordField()Z

    move-result v5

    if-eqz v5, :cond_eb

    .line 825
    :try_start_3a
    sget-boolean v5, Landroid/webkit/DebugFlags;->BROWSER_FRAME:Z

    if-eqz v5, :cond_4e

    .line 826
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v5

    invoke-static {v5}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 829
    :cond_4e
    new-instance v24, Landroid/net/WebAddress;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    .line 831
    .local v24, uri:Landroid/net/WebAddress;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/net/WebAddress;->mHost:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 832
    .local v23, schemePlusHost:Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Landroid/webkit/BrowserFrame;->getUsernamePassword()[Ljava/lang/String;

    move-result-object v21

    .line 835
    .local v21, ret:[Ljava/lang/String;
    if-eqz v21, :cond_eb

    if-eqz p5, :cond_eb

    const/4 v5, 0x0

    aget-object v5, v21, v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_eb

    const/4 v5, 0x1

    aget-object v5, v21, v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_eb

    .line 840
    new-instance v20, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 841
    .local v20, postString:Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v21, v5

    invoke-static {v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_eb

    const/4 v5, 0x1

    aget-object v5, v21, v5

    invoke-static {v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_eb

    .line 843
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/BrowserFrame;->mDatabase:Landroid/webkit/WebViewDatabase;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewDatabase;->getUsernamePassword(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 845
    .local v22, saved:[Ljava/lang/String;
    if-eqz v22, :cond_194

    .line 848
    const/4 v5, 0x0

    aget-object v5, v22, v5

    if-eqz v5, :cond_eb

    .line 852
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/BrowserFrame;->mDatabase:Landroid/webkit/WebViewDatabase;

    move-object v5, v0

    const/4 v6, 0x0

    aget-object v6, v21, v6

    const/4 v7, 0x1

    aget-object v7, v21, v7

    move-object v0, v5

    move-object/from16 v1, v23

    move-object v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewDatabase;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_eb
    .catch Landroid/net/ParseException; {:try_start_3a .. :try_end_eb} :catch_1ab

    .line 871
    .end local v20           #postString:Ljava/lang/String;
    .end local v21           #ret:[Ljava/lang/String;
    .end local v22           #saved:[Ljava/lang/String;
    .end local v23           #schemePlusHost:Ljava/lang/String;
    .end local v24           #uri:Landroid/net/WebAddress;
    :cond_eb
    :goto_eb
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/BrowserFrame;->mIsMainFrame:Z

    move v10, v0

    .line 873
    .local v10, isMainFramePage:Z
    sget-boolean v5, Landroid/webkit/DebugFlags;->BROWSER_FRAME:Z

    if-eqz v5, :cond_14f

    .line 874
    const-string/jumbo v5, "webkit"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startLoadingResource: url="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", method="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", postData="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isMainFramePage="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mainResource="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", userGesture="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    :cond_14f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move/from16 v8, p1

    move/from16 v9, p11

    move/from16 v11, p9

    move/from16 v12, p10

    move-wide/from16 v13, p6

    move-object/from16 v15, p12

    move-object/from16 v16, p13

    invoke-static/range {v5 .. v16}, Landroid/webkit/LoadListener;->getLoadListener(Landroid/content/Context;Landroid/webkit/BrowserFrame;Ljava/lang/String;IZZZZJLjava/lang/String;Ljava/lang/String;)Landroid/webkit/LoadListener;

    move-result-object v18

    .line 885
    .local v18, loadListener:Landroid/webkit/LoadListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/webkit/CallbackProxy;->onLoadResource(Ljava/lang/String;)V

    .line 887
    invoke-static {}, Landroid/webkit/LoadListener;->getNativeLoaderCount()I

    move-result v5

    const/16 v6, 0x12c

    if-le v5, v6, :cond_1ae

    .line 892
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    move-object v6, v0

    const v7, 0x104013e

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/webkit/LoadListener;->error(ILjava/lang/String;)V

    move-object/from16 v5, v18

    .line 917
    :goto_193
    return-object v5

    .line 858
    .end local v10           #isMainFramePage:Z
    .end local v18           #loadListener:Landroid/webkit/LoadListener;
    .restart local v20       #postString:Ljava/lang/String;
    .restart local v21       #ret:[Ljava/lang/String;
    .restart local v22       #saved:[Ljava/lang/String;
    .restart local v23       #schemePlusHost:Ljava/lang/String;
    .restart local v24       #uri:Landroid/net/WebAddress;
    :cond_194
    :try_start_194
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    move-object v5, v0

    const/4 v6, 0x0

    aget-object v6, v21, v6

    const/4 v7, 0x1

    aget-object v7, v21, v7

    const/4 v8, 0x0

    move-object v0, v5

    move-object/from16 v1, v23

    move-object v2, v6

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/webkit/CallbackProxy;->onSavePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    :try_end_1a9
    .catch Landroid/net/ParseException; {:try_start_194 .. :try_end_1a9} :catch_1ab

    goto/16 :goto_eb

    .line 863
    .end local v20           #postString:Ljava/lang/String;
    .end local v21           #ret:[Ljava/lang/String;
    .end local v22           #saved:[Ljava/lang/String;
    .end local v23           #schemePlusHost:Ljava/lang/String;
    .end local v24           #uri:Landroid/net/WebAddress;
    :catch_1ab
    move-exception v5

    goto/16 :goto_eb

    .line 898
    .restart local v10       #isMainFramePage:Z
    .restart local v18       #loadListener:Landroid/webkit/LoadListener;
    :cond_1ae
    new-instance v19, Landroid/webkit/FrameLoader;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/BrowserFrame;->mSettings:Landroid/webkit/WebSettings;

    move-object v5, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object v2, v5

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/FrameLoader;-><init>(Landroid/webkit/LoadListener;Landroid/webkit/WebSettings;Ljava/lang/String;)V

    .line 899
    .local v19, loader:Landroid/webkit/FrameLoader;
    move-object/from16 v0, v19

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/webkit/FrameLoader;->setHeaders(Ljava/util/HashMap;)V

    .line 900
    move-object/from16 v0, v19

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/webkit/FrameLoader;->setPostData([B)V

    .line 903
    const-string v5, "If-Modified-Since"

    move-object/from16 v0, p4

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1e3

    const-string v5, "If-None-Match"

    move-object/from16 v0, p4

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_207

    :cond_1e3
    const/4 v5, 0x2

    :goto_1e4
    move-object/from16 v0, v19

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/webkit/FrameLoader;->setCacheMode(I)V

    .line 907
    invoke-virtual/range {v19 .. v19}, Landroid/webkit/FrameLoader;->executeLoad()Z

    move-result v5

    if-nez v5, :cond_1f9

    .line 908
    const-string/jumbo v5, "startLoadingResource fail"

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/webkit/PerfChecker;->responseAlert(Ljava/lang/String;)V

    .line 915
    :cond_1f9
    const-string/jumbo v5, "startLoadingResource succeed"

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/webkit/PerfChecker;->responseAlert(Ljava/lang/String;)V

    .line 917
    if-nez p11, :cond_20a

    move-object/from16 v5, v18

    goto :goto_193

    :cond_207
    move/from16 v5, p8

    .line 903
    goto :goto_1e4

    .line 917
    :cond_20a
    const/4 v5, 0x0

    goto :goto_193
.end method

.method private transitionToCommitted(IZ)V
    .registers 4
    .parameter "loadType"
    .parameter "isMainFrame"

    .prologue
    .line 470
    if-eqz p2, :cond_10

    .line 471
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mCommitted:Z

    .line 472
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    iget-object v0, v0, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {v0}, Landroid/webkit/ViewManager;->postResetStateAll()V

    .line 474
    :cond_10
    return-void
.end method

.method private updateVisitedHistory(Ljava/lang/String;Z)V
    .registers 4
    .parameter "url"
    .parameter "isReload"

    .prologue
    .line 993
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/CallbackProxy;->doUpdateVisitedHistory(Ljava/lang/String;Z)V

    .line 994
    return-void
.end method

.method private windowObjectCleared(I)V
    .registers 5
    .parameter "nativeFramePointer"

    .prologue
    .line 673
    iget-object v2, p0, Landroid/webkit/BrowserFrame;->mJSInterfaceMap:Ljava/util/Map;

    if-eqz v2, :cond_24

    .line 674
    iget-object v2, p0, Landroid/webkit/BrowserFrame;->mJSInterfaceMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 675
    .local v1, iter:Ljava/util/Iterator;
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 676
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 677
    .local v0, interfaceName:Ljava/lang/String;
    iget-object v2, p0, Landroid/webkit/BrowserFrame;->mJSInterfaceMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, p1, v2, v0}, Landroid/webkit/BrowserFrame;->nativeAddJavascriptInterface(ILjava/lang/Object;Ljava/lang/String;)V

    goto :goto_e

    .line 681
    .end local v0           #interfaceName:Ljava/lang/String;
    .end local v1           #iter:Ljava/util/Iterator;
    :cond_24
    return-void
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4
    .parameter "obj"
    .parameter "interfaceName"

    .prologue
    .line 701
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mJSInterfaceMap:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 702
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/webkit/BrowserFrame;->mJSInterfaceMap:Ljava/util/Map;

    .line 704
    :cond_b
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mJSInterfaceMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 705
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mJSInterfaceMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    :cond_18
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mJSInterfaceMap:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    return-void
.end method

.method public native cacheDisabled()Z
.end method

.method certificate(Landroid/net/http/SslCertificate;)V
    .registers 3
    .parameter "certificate"

    .prologue
    .line 508
    iget-boolean v0, p0, Landroid/webkit/BrowserFrame;->mIsMainFrame:Z

    if-eqz v0, :cond_9

    .line 511
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->onReceivedCertificate(Landroid/net/http/SslCertificate;)V

    .line 513
    :cond_9
    return-void
.end method

.method public native clearCache()V
.end method

.method committed()Z
    .registers 2

    .prologue
    .line 370
    iget-boolean v0, p0, Landroid/webkit/BrowserFrame;->mCommitted:Z

    return v0
.end method

.method public destroy()V
    .registers 2

    .prologue
    .line 519
    invoke-virtual {p0}, Landroid/webkit/BrowserFrame;->nativeDestroyFrame()V

    .line 520
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mBlockMessages:Z

    .line 521
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/BrowserFrame;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 522
    return-void
.end method

.method didFirstLayout()V
    .registers 2

    .prologue
    .line 382
    iget-boolean v0, p0, Landroid/webkit/BrowserFrame;->mFirstLayoutDone:Z

    if-nez v0, :cond_c

    .line 383
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mFirstLayoutDone:Z

    .line 386
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->contentDraw()V

    .line 388
    :cond_c
    return-void
.end method

.method public documentAsText(Landroid/os/Message;)V
    .registers 3
    .parameter "callback"

    .prologue
    .line 658
    invoke-direct {p0}, Landroid/webkit/BrowserFrame;->documentAsText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 659
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 660
    return-void
.end method

.method public native documentHasImages()Z
.end method

.method public externalRepresentation(Landroid/os/Message;)V
    .registers 3
    .parameter "callback"

    .prologue
    .line 643
    invoke-direct {p0}, Landroid/webkit/BrowserFrame;->externalRepresentation()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 644
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 645
    return-void
.end method

.method firstLayoutDone()Z
    .registers 2

    .prologue
    .line 374
    iget-boolean v0, p0, Landroid/webkit/BrowserFrame;->mFirstLayoutDone:Z

    return v0
.end method

.method public getAvailableMemory()J
    .registers 10

    .prologue
    .line 759
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    .line 760
    .local v4, runtime:Ljava/lang/Runtime;
    invoke-virtual {v4}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    .line 761
    .local v2, maxMemory:J
    invoke-virtual {v4}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v0

    .line 762
    .local v0, freeMemory:J
    invoke-virtual {v4}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v5

    .line 764
    .local v5, totalMemory:J
    sub-long v7, v2, v5

    add-long/2addr v7, v0

    return-wide v7
.end method

.method getCallbackProxy()Landroid/webkit/CallbackProxy;
    .registers 2

    .prologue
    .line 1000
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    return-object v0
.end method

.method getRawResFilename(I)Ljava/lang/String;
    .registers 10
    .parameter "id"

    .prologue
    const-string/jumbo v7, "webkit"

    const-string v6, ""

    .line 1020
    packed-switch p1, :pswitch_data_84

    .line 1047
    const-string/jumbo v4, "webkit"

    const-string v4, "getRawResFilename got incompatible resource ID"

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    const-string v4, ""

    move-object v4, v6

    .line 1061
    :goto_13
    return-object v4

    .line 1022
    :pswitch_14
    const v2, 0x10c0004

    .line 1050
    .local v2, resid:I
    :goto_17
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 1051
    .local v3, value:Landroid/util/TypedValue;
    iget-object v4, p0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v3, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1052
    const/4 v4, 0x3

    if-ne p1, v4, :cond_7d

    .line 1053
    iget-object v4, v3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1054
    .local v1, path:Ljava/lang/String;
    const/16 v4, 0x2f

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1055
    .local v0, index:I
    if-gez v0, :cond_75

    .line 1056
    const-string/jumbo v4, "webkit"

    const-string v4, "Can\'t find drawable directory."

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    const-string v4, ""

    move-object v4, v6

    goto :goto_13

    .line 1026
    .end local v0           #index:I
    .end local v1           #path:Ljava/lang/String;
    .end local v2           #resid:I
    .end local v3           #value:Landroid/util/TypedValue;
    :pswitch_43
    const v2, 0x10c0003

    .line 1027
    .restart local v2       #resid:I
    goto :goto_17

    .line 1031
    .end local v2           #resid:I
    :pswitch_47
    const v2, 0x10800c0

    .line 1032
    .restart local v2       #resid:I
    goto :goto_17

    .line 1035
    .end local v2           #resid:I
    :pswitch_4b
    iget-object v4, p0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040466

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_13

    .line 1039
    :pswitch_59
    iget-object v4, p0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040467

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_13

    .line 1043
    :pswitch_67
    iget-object v4, p0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040468

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_13

    .line 1059
    .restart local v0       #index:I
    .restart local v1       #path:Ljava/lang/String;
    .restart local v2       #resid:I
    .restart local v3       #value:Landroid/util/TypedValue;
    :cond_75
    const/4 v4, 0x0

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_13

    .line 1061
    .end local v0           #index:I
    .end local v1           #path:Ljava/lang/String;
    :cond_7d
    iget-object v4, v3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_13

    .line 1020
    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_14
        :pswitch_43
        :pswitch_47
        :pswitch_4b
        :pswitch_59
        :pswitch_67
    .end packed-switch
.end method

.method getUserAgentString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1007
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getWebViewCore()Landroid/webkit/WebViewCore;
    .registers 2

    .prologue
    .line 779
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mWebViewCore:Landroid/webkit/WebViewCore;

    return-object v0
.end method

.method public goBackOrForward(I)V
    .registers 3
    .parameter "steps"

    .prologue
    .line 342
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    .line 343
    invoke-direct {p0, p1}, Landroid/webkit/BrowserFrame;->nativeGoBackOrForward(I)V

    .line 344
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    .line 345
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    .line 530
    iget-boolean v4, p0, Landroid/webkit/BrowserFrame;->mBlockMessages:Z

    if-eqz v4, :cond_6

    .line 623
    :cond_5
    :goto_5
    return-void

    .line 533
    :cond_6
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_7a

    goto :goto_5

    .line 589
    :pswitch_c
    iget-object v4, p0, Landroid/webkit/BrowserFrame;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getSavePassword()Z

    move-result v4

    if-eqz v4, :cond_58

    invoke-direct {p0}, Landroid/webkit/BrowserFrame;->hasPasswordField()Z

    move-result v4

    if-eqz v4, :cond_58

    .line 590
    iget-object v4, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v4}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 592
    .local v0, item:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_58

    .line 593
    new-instance v3, Landroid/net/WebAddress;

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    .line 594
    .local v3, uri:Landroid/net/WebAddress;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v3, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Landroid/net/WebAddress;->mHost:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 595
    .local v1, schemePlusHost:Ljava/lang/String;
    iget-object v4, p0, Landroid/webkit/BrowserFrame;->mDatabase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v4, v1}, Landroid/webkit/WebViewDatabase;->getUsernamePassword(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 597
    .local v2, up:[Ljava/lang/String;
    if-eqz v2, :cond_58

    aget-object v4, v2, v6

    if-eqz v4, :cond_58

    .line 598
    aget-object v4, v2, v6

    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-direct {p0, v4, v5}, Landroid/webkit/BrowserFrame;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    .end local v0           #item:Landroid/webkit/WebHistoryItem;
    .end local v1           #schemePlusHost:Ljava/lang/String;
    .end local v2           #up:[Ljava/lang/String;
    .end local v3           #uri:Landroid/net/WebAddress;
    :cond_58
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v4

    const/16 v5, 0x6c

    invoke-virtual {v4, v5}, Landroid/webkit/WebViewWorker;->sendEmptyMessage(I)Z

    goto :goto_5

    .line 608
    :pswitch_62
    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v4, v5}, Landroid/webkit/BrowserFrame;->nativeCallPolicyFunction(II)V

    goto :goto_5

    .line 613
    :pswitch_6a
    iget v4, p0, Landroid/webkit/BrowserFrame;->mOrientation:I

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eq v4, v5, :cond_5

    .line 614
    iget v4, p1, Landroid/os/Message;->arg1:I

    iput v4, p0, Landroid/webkit/BrowserFrame;->mOrientation:I

    .line 615
    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v4}, Landroid/webkit/BrowserFrame;->nativeOrientationChanged(I)V

    goto :goto_5

    .line 533
    :pswitch_data_7a
    .packed-switch 0x3e9
        :pswitch_c
        :pswitch_6a
        :pswitch_62
    .end packed-switch
.end method

.method public handleUrl(Ljava/lang/String;)Z
    .registers 5
    .parameter "url"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 688
    iget-boolean v0, p0, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    if-ne v0, v2, :cond_8

    move v0, v1

    .line 696
    :goto_7
    return v0

    .line 691
    :cond_8
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->shouldOverrideUrlLoading(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 693
    invoke-virtual {p0}, Landroid/webkit/BrowserFrame;->didFirstLayout()V

    move v0, v2

    .line 694
    goto :goto_7

    :cond_15
    move v0, v1

    .line 696
    goto :goto_7
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "baseUrl"
    .parameter "data"
    .parameter "mimeType"
    .parameter "encoding"
    .parameter "historyUrl"

    .prologue
    .line 316
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    .line 317
    if-eqz p5, :cond_b

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_d

    .line 318
    :cond_b
    const-string p5, "about:blank"

    .line 320
    :cond_d
    if-nez p2, :cond_11

    .line 321
    const-string p2, ""

    .line 326
    :cond_11
    if-eqz p1, :cond_19

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1b

    .line 327
    :cond_19
    const-string p1, "about:blank"

    .line 329
    :cond_1b
    if-eqz p3, :cond_23

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_26

    .line 330
    :cond_23
    const-string/jumbo p3, "text/html"

    .line 332
    :cond_26
    invoke-direct/range {p0 .. p5}, Landroid/webkit/BrowserFrame;->nativeLoadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    .line 334
    return-void
.end method

.method loadType()I
    .registers 2

    .prologue
    .line 378
    iget v0, p0, Landroid/webkit/BrowserFrame;->mLoadType:I

    return v0
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 282
    .local p2, extraHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    .line 283
    invoke-static {p1}, Landroid/webkit/URLUtil;->isJavaScriptUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 285
    const-string v0, "javascript:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/BrowserFrame;->stringByEvaluatingJavaScriptFromString(Ljava/lang/String;)Ljava/lang/String;

    .line 290
    :goto_16
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    .line 291
    return-void

    .line 288
    :cond_1a
    invoke-direct {p0, p1, p2}, Landroid/webkit/BrowserFrame;->nativeLoadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_16
.end method

.method public native nativeDestroyFrame()V
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .registers 4
    .parameter "url"
    .parameter "data"

    .prologue
    .line 299
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    .line 300
    invoke-direct {p0, p1, p2}, Landroid/webkit/BrowserFrame;->nativePostUrl(Ljava/lang/String;[B)V

    .line 301
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    .line 302
    return-void
.end method

.method public native reload(Z)V
.end method

.method public runGC()V
    .registers 2

    .prologue
    .line 768
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 770
    return-void
.end method

.method public sendOrientationChangeEvent()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1071
    iget-boolean v2, p0, Landroid/webkit/BrowserFrame;->mOrientationChange:Z

    if-nez v2, :cond_6

    .line 1093
    :goto_5
    return-void

    .line 1073
    :cond_6
    iget-object v2, p0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 1074
    .local v1, wm:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getOrientation()I

    move-result v0

    .line 1075
    .local v0, orientation:I
    packed-switch v0, :pswitch_data_34

    .line 1091
    :goto_1c
    const/16 v2, 0x3ea

    invoke-virtual {p0, v2, v0, v4}, Landroid/webkit/BrowserFrame;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/webkit/BrowserFrame;->sendMessage(Landroid/os/Message;)Z

    .line 1092
    iput-boolean v4, p0, Landroid/webkit/BrowserFrame;->mOrientationChange:Z

    goto :goto_5

    .line 1077
    :pswitch_28
    const/16 v0, 0x5a

    .line 1078
    goto :goto_1c

    .line 1080
    :pswitch_2b
    const/16 v0, 0xb4

    .line 1081
    goto :goto_1c

    .line 1083
    :pswitch_2e
    const/16 v0, -0x5a

    .line 1084
    goto :goto_1c

    .line 1086
    :pswitch_31
    const/4 v0, 0x0

    .line 1087
    goto :goto_1c

    .line 1075
    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_31
        :pswitch_28
        :pswitch_2b
        :pswitch_2e
    .end packed-switch
.end method

.method public stopLoading()V
    .registers 2

    .prologue
    .line 1169
    iget-boolean v0, p0, Landroid/webkit/BrowserFrame;->mIsMainFrame:Z

    if-eqz v0, :cond_7

    .line 1170
    invoke-direct {p0}, Landroid/webkit/BrowserFrame;->resetLoadingStates()V

    .line 1172
    :cond_7
    invoke-direct {p0}, Landroid/webkit/BrowserFrame;->nativeStopLoading()V

    .line 1173
    return-void
.end method

.method public native stringByEvaluatingJavaScriptFromString(Ljava/lang/String;)Ljava/lang/String;
.end method
