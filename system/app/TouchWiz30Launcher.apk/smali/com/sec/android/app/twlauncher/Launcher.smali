.class public final Lcom/sec/android/app/twlauncher/Launcher;
.super Landroid/app/ActivityGroup;
.source "Launcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/sec/android/app/twlauncher/ScrollMenu$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/Launcher$BootWatcher;,
        Lcom/sec/android/app/twlauncher/Launcher$TipsDialog;,
        Lcom/sec/android/app/twlauncher/Launcher$ViewTypeDialog;,
        Lcom/sec/android/app/twlauncher/Launcher$MenuEditDialog;,
        Lcom/sec/android/app/twlauncher/Launcher$MotionPanningDialogOff;,
        Lcom/sec/android/app/twlauncher/Launcher$MotionPanningDialogOn;,
        Lcom/sec/android/app/twlauncher/Launcher$WallpaperFastBitmapDrawable;,
        Lcom/sec/android/app/twlauncher/Launcher$PackageDeleteObserver;,
        Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;,
        Lcom/sec/android/app/twlauncher/Launcher$PowerSavingObserver;,
        Lcom/sec/android/app/twlauncher/Launcher$BadgeChangeObserver;,
        Lcom/sec/android/app/twlauncher/Launcher$AppWidgetResetObserver;,
        Lcom/sec/android/app/twlauncher/Launcher$FavoritesChangeObserver;,
        Lcom/sec/android/app/twlauncher/Launcher$BootCompleteIntentReceiver;,
        Lcom/sec/android/app/twlauncher/Launcher$CloseSystemDialogsIntentReceiver;,
        Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;,
        Lcom/sec/android/app/twlauncher/Launcher$ExternalAppsAvailabilityReceiver;,
        Lcom/sec/android/app/twlauncher/Launcher$TextDialog;,
        Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerHelp1;,
        Lcom/sec/android/app/twlauncher/Launcher$DefaultSortConfirmDialog;,
        Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog;,
        Lcom/sec/android/app/twlauncher/Launcher$CreateFolder;,
        Lcom/sec/android/app/twlauncher/Launcher$RenameFolder;,
        Lcom/sec/android/app/twlauncher/Launcher$NameFolder;,
        Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;,
        Lcom/sec/android/app/twlauncher/Launcher$Delay_handler;
    }
.end annotation


# static fields
.field static DEFAULT_SCREEN:I

.field static DEFAULT_SCREEN_COUNT:I

.field static DEFAULT_SCREEN_NO:I

.field static NUMBER_CELLS_X:I

.field static NUMBER_CELLS_Y:I

.field static SCREEN_COUNT:I

.field static USE_MAINMENU_CONCENTRATION_EFFECT:Z

.field static USE_MAINMENU_LISTMODE:Z

.field protected static mCameraFirmVer:Ljava/lang/String;

.field protected static mCscVer:Ljava/lang/String;

.field private static mFirstTime:Z

.field protected static mHwVer:Ljava/lang/String;

.field protected static mIsDefaultIMEI:Z

.field protected static mIsSmdPbaTested:Ljava/lang/String;

.field public static mMenuWallpaperBitmap:Landroid/graphics/Bitmap;

.field protected static mPdaVer:Ljava/lang/String;

.field protected static mPhoneVer:Ljava/lang/String;

.field protected static mRfCalDate:Ljava/lang/String;

.field protected static mTskFirmVer:Ljava/lang/String;

.field protected static mTspFirmVer:Ljava/lang/String;

.field protected static mUART:Ljava/lang/String;

.field protected static mUNnumber:Ljava/lang/String;

.field protected static mUSB:Ljava/lang/String;

.field static mUninstallPackageName:Ljava/lang/String;

.field private static final sLock:Ljava/lang/Object;

.field private static final sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

.field private static sScreen:I


# instance fields
.field private final ACTION_APP_MORECONTENTS:Ljava/lang/String;

.field private final APP_CALLER_HOME:I

.field private final EXT_KEY_APP_CALLER:Ljava/lang/String;

.field private final UNINSTALL_COMPLETE:I

.field private config:Lcom/sec/android/app/twlauncher/appConfig;

.field private isDone:Z

.field private mActiveMenuId:I

.field private mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

.field private mAddToWorkspaceAdapter:Lcom/sec/android/app/twlauncher/TextIconAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/app/twlauncher/TextIconAdapter",
            "<",
            "Lcom/sec/android/app/twlauncher/SimpleTextIconItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAddToWorkspaceBackground:Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground;

.field private mAddToWorkspaceMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

.field private mAddWidgetDialog:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

.field private mAddWidgetType:I

.field private mAppShortcutMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

.field private mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

.field protected mAppUnistallList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/sec/android/app/twlauncher/Launcher$PackageDeleteObserver;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

.field private mAppWidgetHostContext:Landroid/content/MutableContextWrapper;

.field private mAppWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private final mApplicationsReceiver:Landroid/content/BroadcastReceiver;

.field private final mBadgeCountChangedReceiver:Landroid/content/BroadcastReceiver;

.field private final mBadgeObserver:Landroid/database/ContentObserver;

.field private mBindSamsungAppWidgetExternal:Ljava/lang/Runnable;

.field private mBinder:Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;

.field mBlankScreen:[I

.field private final mBootCompleteIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mBootInProgress:Z

.field private final mCellCoordinates:[I

.field private final mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

.field private mDataConnChecker:Lcom/sec/android/app/twlauncher/DataConnChecker;

.field private mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

.field private mDeleteIconSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

.field private mDeleteIndex:I

.field private mDeleteZone:Lcom/sec/android/app/twlauncher/DeleteZone;

.field private mDesktopLocked:Z

.field private mDestroyed:Z

.field private mDimWallpaperImageDrawable:Landroid/graphics/drawable/Drawable;

.field private mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

.field private mEditCornerSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

.field private mExec:Ljava/util/concurrent/ExecutorService;

.field private final mExternalAppsAvailabilityReceiver:Landroid/content/BroadcastReceiver;

.field private mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

.field private mFolderMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

.field private mFolderToRemove:Lcom/sec/android/app/twlauncher/UserFolderInfo;

.field private mForce16BitWindow:Z

.field private mGLSurfaceViewGroup:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

.field private mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsActive:Z

.field private mIsChangedBadge:Z

.field private mIsDeletePopup:Z

.field private mIsMoveDefaultScreen:Z

.field private mIsNewIntent:Z

.field private mIsOpaqueWindow:Z

.field private mIsScreenOff:Z

.field private mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

.field private mLauncherManager:Lcom/sec/android/app/twlauncher/LauncherManager;

.field private mLocaleChanged:Z

.field private mMenuDrawer:Lcom/sec/android/app/twlauncher/MenuDrawer;

.field private mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

.field private mMenuScreenCount:I

.field private final mObserver:Landroid/database/ContentObserver;

.field private mOptionsMenuState:I

.field public mPageBackground:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

.field public mPageHighlight:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

.field public mPageOutline:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

.field private final mPowerSavingObserver:Landroid/database/ContentObserver;

.field private mPrefs:Landroid/content/SharedPreferences;

.field mProductModelFamilyName:Ljava/lang/String;

.field mProductModelName:Ljava/lang/String;

.field private mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

.field private mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mResOrientation:I

.field private mResolveInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRestoring:Z

.field private mRunBadgeChanged:Ljava/lang/Runnable;

.field private mSamsungWidgetInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

.field private mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSavedState:Landroid/os/Bundle;

.field private mScreenOrientation:I

.field private mShortcutMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

.field private mSpans:[I

.field private mStateQuickNavigation:I

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mToast:Landroid/widget/Toast;

.field private mWaitingForResult:Z

.field private mWallpaperCanvasView:Lcom/sec/android/app/twlauncher/WallpaperCanvasView;

.field private final mWallpaperChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mWallpaperImageDrawable:Landroid/graphics/drawable/Drawable;

.field private mWallpapersMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

.field private mWidget:Lcom/sec/android/app/twlauncher/Widget;

.field private mWidgetId:I

.field private final mWidgetObserver:Landroid/database/ContentObserver;

.field private mWidgetPreview:Lcom/sec/android/app/twlauncher/WidgetPreview;

.field private mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

.field private minsertAtFirst:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x4

    const/4 v0, 0x3

    const/4 v2, 0x0

    const-string v1, "N"

    .line 294
    sput v0, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN:I

    .line 295
    sput v0, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN_NO:I

    .line 297
    sput v3, Lcom/sec/android/app/twlauncher/Launcher;->NUMBER_CELLS_X:I

    .line 300
    sput v3, Lcom/sec/android/app/twlauncher/Launcher;->NUMBER_CELLS_Y:I

    .line 303
    sput v4, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    .line 306
    sput v4, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN_COUNT:I

    .line 345
    sput-boolean v2, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_CONCENTRATION_EFFECT:Z

    .line 350
    sput-boolean v2, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_LISTMODE:Z

    .line 441
    new-instance v0, Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/LauncherModel;-><init>()V

    sput-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    .line 443
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sLock:Ljava/lang/Object;

    .line 445
    sget v0, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN:I

    sput v0, Lcom/sec/android/app/twlauncher/Launcher;->sScreen:I

    .line 643
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/twlauncher/Launcher;->mFirstTime:Z

    .line 646
    sput-boolean v2, Lcom/sec/android/app/twlauncher/Launcher;->mIsDefaultIMEI:Z

    .line 660
    const-string v0, "N"

    sput-object v1, Lcom/sec/android/app/twlauncher/Launcher;->mIsSmdPbaTested:Ljava/lang/String;

    .line 661
    const-string v0, "N"

    sput-object v1, Lcom/sec/android/app/twlauncher/Launcher;->mCameraFirmVer:Ljava/lang/String;

    .line 663
    const-string v0, "N"

    sput-object v1, Lcom/sec/android/app/twlauncher/Launcher;->mUNnumber:Ljava/lang/String;

    .line 664
    const-string v0, "N"

    sput-object v1, Lcom/sec/android/app/twlauncher/Launcher;->mTspFirmVer:Ljava/lang/String;

    .line 665
    const-string v0, "N"

    sput-object v1, Lcom/sec/android/app/twlauncher/Launcher;->mTskFirmVer:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 705
    invoke-direct {p0, v3}, Landroid/app/ActivityGroup;-><init>(Z)V

    .line 150
    invoke-static {}, Lcom/sec/android/app/twlauncher/appConfig;->getInstance()Lcom/sec/android/app/twlauncher/appConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->config:Lcom/sec/android/app/twlauncher/appConfig;

    .line 449
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$ExternalAppsAvailabilityReceiver;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/twlauncher/Launcher$ExternalAppsAvailabilityReceiver;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mExternalAppsAvailabilityReceiver:Landroid/content/BroadcastReceiver;

    .line 451
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mApplicationsReceiver:Landroid/content/BroadcastReceiver;

    .line 453
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$CloseSystemDialogsIntentReceiver;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/twlauncher/Launcher$CloseSystemDialogsIntentReceiver;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    .line 455
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$BootCompleteIntentReceiver;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/twlauncher/Launcher$BootCompleteIntentReceiver;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBootCompleteIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 457
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$FavoritesChangeObserver;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/Launcher$FavoritesChangeObserver;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mObserver:Landroid/database/ContentObserver;

    .line 459
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$AppWidgetResetObserver;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/Launcher$AppWidgetResetObserver;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetObserver:Landroid/database/ContentObserver;

    .line 461
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$BadgeChangeObserver;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/Launcher$BadgeChangeObserver;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBadgeObserver:Landroid/database/ContentObserver;

    .line 463
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$PowerSavingObserver;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/Launcher$PowerSavingObserver;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mPowerSavingObserver:Landroid/database/ContentObserver;

    .line 472
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBootInProgress:Z

    .line 516
    iput v5, p0, Lcom/sec/android/app/twlauncher/Launcher;->mOptionsMenuState:I

    .line 526
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCellCoordinates:[I

    .line 535
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopLocked:Z

    .line 539
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppUnistallList:Ljava/util/HashMap;

    .line 541
    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 596
    const-string v0, "com.sec.android.app.morewidget.action.APP_MORECONTENTS"

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->ACTION_APP_MORECONTENTS:Ljava/lang/String;

    .line 598
    const-string v0, "KEY_APP_CALLER"

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->EXT_KEY_APP_CALLER:Ljava/lang/String;

    .line 600
    iput v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->APP_CALLER_HOME:I

    .line 618
    iput v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    .line 620
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsDeletePopup:Z

    .line 622
    iput v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteIndex:I

    .line 624
    iput v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuScreenCount:I

    .line 632
    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 635
    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDimWallpaperImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 676
    const-string v0, "S1"

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mProductModelFamilyName:Ljava/lang/String;

    .line 678
    const-string v0, "GT-I9000"

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mProductModelName:Ljava/lang/String;

    .line 680
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mForce16BitWindow:Z

    .line 688
    iput v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mActiveMenuId:I

    .line 1020
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/Launcher$1;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1076
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/Launcher$2;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 1092
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/Launcher$3;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBadgeCountChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 6371
    iput v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->UNINSTALL_COMPLETE:I

    .line 6380
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$11;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/Launcher$11;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;

    .line 6541
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$12;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/Launcher$12;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBindSamsungAppWidgetExternal:Ljava/lang/Runnable;

    .line 6778
    iput v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetType:I

    .line 6780
    iput v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetId:I

    .line 6782
    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    .line 6784
    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 6786
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSpans:[I

    .line 6788
    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    .line 6790
    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidget:Lcom/sec/android/app/twlauncher/Widget;

    .line 6792
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    .line 7018
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$13;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/Launcher$13;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRunBadgeChanged:Ljava/lang/Runnable;

    .line 7095
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsOpaqueWindow:Z

    .line 706
    return-void
.end method

.method private acceptFilter()Z
    .locals 2

    .prologue
    .line 1665
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1666
    .local v0, inputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->showWallpaperMenu()V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/QuickViewMainMenu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/QuickViewWorkspace;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/Workspace;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/FolderInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/FolderInfo;)Lcom/sec/android/app/twlauncher/FolderInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 146
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    return-object p1
.end method

.method static synthetic access$3300()Lcom/sec/android/app/twlauncher/LauncherModel;
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/sec/android/app/twlauncher/Launcher;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopLocked:Z

    return v0
.end method

.method static synthetic access$3402(Lcom/sec/android/app/twlauncher/Launcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopLocked:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/MenuManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->setSomethingsInDefaultIMEI()V

    return-void
.end method

.method static synthetic access$4100(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/DragLayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/sec/android/app/twlauncher/Launcher;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->uninstallPackage()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4300(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/UserFolderInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderToRemove:Lcom/sec/android/app/twlauncher/UserFolderInfo;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->resetAndRestartLoaders()V

    return-void
.end method

.method static synthetic access$4500(Lcom/sec/android/app/twlauncher/Launcher;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->removeShortcutsForPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/sec/android/app/twlauncher/Launcher;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mExec:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/sec/android/app/twlauncher/Launcher;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->triggerModelAdd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/sec/android/app/twlauncher/Launcher;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->updateShortcutsForPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5000(Lcom/sec/android/app/twlauncher/Launcher;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->triggerModelUpdate(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$502(Lcom/sec/android/app/twlauncher/Launcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsScreenOff:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/sec/android/app/twlauncher/Launcher;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBootInProgress:Z

    return v0
.end method

.method static synthetic access$5102(Lcom/sec/android/app/twlauncher/Launcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBootInProgress:Z

    return p1
.end method

.method static synthetic access$5200(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mGLSurfaceViewGroup:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->onFavoritesChanged()V

    return-void
.end method

.method static synthetic access$5400(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->onAppWidgetReset()V

    return-void
.end method

.method static synthetic access$5500(Lcom/sec/android/app/twlauncher/Launcher;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRunBadgeChanged:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/sec/android/app/twlauncher/Launcher;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5702(Lcom/sec/android/app/twlauncher/Launcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsChangedBadge:Z

    return p1
.end method

.method static synthetic access$5800(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;Ljava/util/ArrayList;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 146
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/twlauncher/Launcher;->bindItems(Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;Ljava/util/ArrayList;II)V

    return-void
.end method

.method static synthetic access$5900(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;Lcom/sec/android/app/twlauncher/ApplicationsAdapter;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 146
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/Launcher;->bindApplications(Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;Lcom/sec/android/app/twlauncher/ApplicationsAdapter;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/twlauncher/Launcher;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsActive:Z

    return v0
.end method

.method static synthetic access$6000(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;Ljava/util/LinkedList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 146
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/Launcher;->bindAppWidgets(Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;Ljava/util/LinkedList;)V

    return-void
.end method

.method static synthetic access$6100(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;Ljava/util/LinkedList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 146
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/Launcher;->bindSamsungAppWidgets(Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;Ljava/util/LinkedList;)V

    return-void
.end method

.method static synthetic access$6200(Lcom/sec/android/app/twlauncher/Launcher;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->checkSamsungAppWidgetExternal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6300(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->bindSamsungAppWidgetExternal()V

    return-void
.end method

.method static synthetic access$6400(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->onBadgeChanged()V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/AddWidgetDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetDialog:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/twlauncher/Launcher;Landroid/view/View;Landroid/widget/ListAdapter;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 146
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/Launcher;->activateMenu(Landroid/view/View;Landroid/widget/ListAdapter;)V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->showShortcutMenu()V

    return-void
.end method

.method private activateMenu(Landroid/view/View;Landroid/widget/ListAdapter;)V
    .locals 3
    .parameter "aMenu"
    .parameter "adapter"

    .prologue
    .line 5397
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setVisibility(I)V

    .line 5398
    instance-of v1, p1, Lcom/sec/android/app/twlauncher/ScrollMenu;

    if-eqz v1, :cond_1

    .line 5399
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/twlauncher/ScrollMenu;

    move-object v1, v0

    invoke-virtual {v1, p2}, Lcom/sec/android/app/twlauncher/ScrollMenu;->activate(Landroid/widget/ListAdapter;)V

    .line 5400
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mActiveMenuId:I

    .line 5406
    :cond_0
    :goto_0
    return-void

    .line 5402
    :cond_1
    instance-of v1, p1, Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    if-eqz v1, :cond_0

    .line 5403
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->activate()V

    .line 5404
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mActiveMenuId:I

    goto :goto_0
.end method

.method private addFolder(Ljava/lang/CharSequence;Z)Lcom/sec/android/app/twlauncher/FolderInfo;
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x1

    .line 3834
    invoke-static {v9}, Lcom/sec/android/app/twlauncher/Launcher;->createUserFolderInfo(I)Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-result-object v1

    .line 3835
    if-nez p1, :cond_0

    .line 3836
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getOwner()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->getNewFolderName(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 3840
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->updateAddItemCellInfo()V

    .line 3842
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 3844
    invoke-virtual {p0, v8}, Lcom/sec/android/app/twlauncher/Launcher;->findPreferredSingleSlotOrAnySlot(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)I

    move-result v0

    .line 3845
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 3846
    const/4 v0, 0x0

    .line 3863
    :goto_1
    return-object v0

    .line 3838
    :cond_0
    invoke-virtual {v1, p1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3847
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v2

    if-eq v0, v2, :cond_2

    .line 3848
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(I)V

    .line 3852
    :cond_2
    const-wide/16 v2, -0x64

    iget v4, v8, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    iget v5, v8, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    iget v6, v8, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    const/4 v7, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIIIZ)V

    .line 3855
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->addDesktopItem(Lcom/sec/android/app/twlauncher/ItemInfo;)V

    .line 3856
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->addFolder(Lcom/sec/android/app/twlauncher/FolderInfo;)V

    .line 3859
    const v2, 0x7f03000a

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v2, p0, v0, v1}, Lcom/sec/android/app/twlauncher/FolderIcon;->fromXml(ILcom/sec/android/app/twlauncher/Launcher;Landroid/view/ViewGroup;Lcom/sec/android/app/twlauncher/UserFolderInfo;)Lcom/sec/android/app/twlauncher/FolderIcon;

    move-result-object v3

    .line 3861
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget v4, v8, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    iget v5, v8, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    iget v6, v8, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    move v7, v9

    move v8, v9

    move v9, p2

    invoke-virtual/range {v2 .. v9}, Lcom/sec/android/app/twlauncher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    move-object v0, v1

    .line 3863
    goto :goto_1
.end method

.method private addItems()V
    .locals 1

    .prologue
    .line 3409
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->findAllVacantCellsFromModel()Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->showAddToWorkspaceMenu(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    .line 3410
    return-void
.end method

.method static addLiveFolder(Landroid/content/Context;Landroid/content/Intent;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)Lcom/sec/android/app/twlauncher/LiveFolderInfo;
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x0

    .line 3893
    const-string v1, "android.intent.extra.livefolder.BASE_INTENT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 3894
    const-string v2, "android.intent.extra.livefolder.NAME"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3897
    const/4 v5, 0x0

    .line 3900
    const-string v2, "android.intent.extra.livefolder.ICON"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .line 3901
    if-eqz v3, :cond_1

    instance-of v2, v3, Landroid/content/Intent$ShortcutIconResource;

    if-eqz v2, :cond_1

    .line 3903
    :try_start_0
    move-object v0, v3

    check-cast v0, Landroid/content/Intent$ShortcutIconResource;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3904
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 3905
    iget-object v7, v2, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v6

    .line 3907
    iget-object v7, v2, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 3908
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    move-object v11, v2

    move-object v2, v3

    move-object v3, v11

    .line 3914
    :goto_0
    if-nez v2, :cond_0

    .line 3915
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f020053

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v6, v2

    .line 3918
    :goto_1
    new-instance v2, Lcom/sec/android/app/twlauncher/LiveFolderInfo;

    invoke-direct {v2}, Lcom/sec/android/app/twlauncher/LiveFolderInfo;-><init>()V

    .line 3919
    iput-object v6, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 3920
    invoke-virtual {v2, v5}, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->setFiltered(Z)V

    .line 3921
    invoke-virtual {v2, v4}, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 3922
    iput-object v3, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 3923
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v2, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->uri:Landroid/net/Uri;

    .line 3924
    iput-object v1, v2, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->baseIntent:Landroid/content/Intent;

    .line 3925
    const-string v1, "android.intent.extra.livefolder.DISPLAY_MODE"

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v2, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->displayMode:I

    .line 3928
    const-wide/16 v3, -0x64

    iget v5, p2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    iget v6, p2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    iget v7, p2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    move-object v1, p0

    move v8, p3

    invoke-static/range {v1 .. v8}, Lcom/sec/android/app/twlauncher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIIIZ)V

    .line 3931
    sget-object v1, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->addFolder(Lcom/sec/android/app/twlauncher/FolderInfo;)V

    .line 3933
    return-object v2

    .line 3909
    :catch_0
    move-exception v2

    move-object v2, v10

    .line 3910
    :goto_2
    const-string v6, "Launcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not load live folder icon: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v2

    move-object v2, v10

    goto :goto_0

    .line 3909
    :catch_1
    move-exception v6

    goto :goto_2

    :cond_0
    move-object v6, v2

    goto :goto_1

    :cond_1
    move-object v3, v10

    move-object v2, v10

    goto :goto_0
.end method

.method static addShortcut(Landroid/content/Context;Landroid/content/Intent;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .locals 8
    .parameter "context"
    .parameter "data"
    .parameter "cellInfo"
    .parameter "notify"

    .prologue
    .line 2423
    invoke-static {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v1

    .line 2424
    .local v1, info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    const-wide/16 v2, -0x64

    iget v4, p2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    iget v5, p2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    iget v6, p2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    move-object v0, p0

    move v7, p3

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIIIZ)V

    .line 2428
    return-object v1
.end method

.method private bindAppWidgets(Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;Ljava/util/LinkedList;)V
    .locals 13
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 4540
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    .line 4541
    iget-boolean v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopLocked:Z

    .line 4543
    invoke-virtual {p2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4544
    invoke-virtual {p2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    move-object v7, v0

    .line 4546
    iget v2, v7, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->appWidgetId:I

    .line 4547
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v3, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v3

    .line 4549
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHostContext:Landroid/content/MutableContextWrapper;

    invoke-virtual {v4, v5, v2, v3}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v4

    iput-object v4, v7, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 4552
    const-string v4, "Launcher"

    const-string v5, "about to setAppWidget for id=%d, info=%s"

    new-array v6, v12, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v10

    aput-object v3, v6, v11

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4559
    iget v4, v7, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    iget v5, v7, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    iget-object v6, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p0, v4, v5, v6, v2}, Lcom/sec/android/app/twlauncher/Launcher;->sendWidgetResizeIntent(IILandroid/content/ComponentName;I)V

    .line 4561
    iget-object v4, v7, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v4, v2, v3}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 4562
    iget-object v2, v7, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v2, v7}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 4564
    iget-object v2, v7, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget v3, v7, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    iget v4, v7, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    iget v5, v7, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    iget v6, v7, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    iget v7, v7, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    if-nez v8, :cond_1

    move v8, v11

    :goto_0
    invoke-virtual/range {v1 .. v8}, Lcom/sec/android/app/twlauncher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 4567
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->requestLayout()V

    .line 4569
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4570
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->invalidate()V

    .line 4575
    :cond_0
    invoke-virtual {p2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4580
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->startBindingSamsungAppWidgets()V

    .line 4584
    :goto_1
    return-void

    :cond_1
    move v8, v10

    .line 4564
    goto :goto_0

    .line 4582
    :cond_2
    invoke-virtual {p1, v12}, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1
.end method

.method private bindApplications(Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;Lcom/sec/android/app/twlauncher/ApplicationsAdapter;)V
    .locals 1
    .parameter "binder"
    .parameter "appAdapter"

    .prologue
    .line 4523
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/twlauncher/MenuManager;->setAdapter(Lcom/sec/android/app/twlauncher/ApplicationsAdapter;)V

    .line 4524
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->startBindingAppWidgets()V

    .line 4525
    return-void
.end method

.method private bindDesktopItems(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4380
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 4382
    :cond_0
    const-string v0, "Launcher.LauncherModel"

    const-string v1, "  ------> a source is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4412
    :goto_0
    return-void

    .line 4386
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    .line 4387
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v2

    .line 4388
    const/4 v0, 0x0

    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_2

    .line 4389
    invoke-virtual {v1, v3}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 4388
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 4391
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->removeAllActivities()V

    .line 4406
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBinder:Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;

    if-eqz v0, :cond_3

    .line 4407
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBinder:Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->mTerminate:Z

    .line 4410
    :cond_3
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBinder:Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;

    .line 4411
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBinder:Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->startBindingItems()V

    goto :goto_0
.end method

.method private bindItems(Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;Ljava/util/ArrayList;II)V
    .locals 15
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ItemInfo;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 4417
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    .line 4418
    iget-boolean v12, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopLocked:Z

    .line 4420
    add-int/lit8 v5, p3, 0x6

    move v0, v5

    move/from16 v1, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v13

    move/from16 v14, p3

    .line 4423
    :goto_0
    if-ge v14, v13, :cond_4

    .line 4424
    move-object/from16 v0, p2

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sec/android/app/twlauncher/ItemInfo;

    .line 4426
    const-string v5, "Launcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "added a item in workspace. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4427
    move-object/from16 v0, p3

    iget v0, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    move v5, v0

    sparse-switch v5, :sswitch_data_0

    .line 4423
    :goto_1
    add-int/lit8 v5, v14, 0x1

    move v14, v5

    goto :goto_0

    .line 4430
    :sswitch_0
    move-object/from16 v0, p3

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-object v5, v0

    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/Launcher;->createShortcut(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Landroid/view/View;

    move-result-object v5

    .line 4431
    move-object/from16 v0, p3

    iget v0, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    move v6, v0

    move-object/from16 v0, p3

    iget v0, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    move v7, v0

    move-object/from16 v0, p3

    iget v0, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    move v8, v0

    const/4 v9, 0x1

    const/4 v10, 0x1

    if-nez v12, :cond_0

    const/4 v11, 0x1

    :goto_2
    invoke-virtual/range {v4 .. v11}, Lcom/sec/android/app/twlauncher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 4434
    const-string v5, "Launcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "--> title="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    check-cast p3, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-virtual/range {p3 .. p3}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4431
    :cond_0
    const/4 v11, 0x0

    goto :goto_2

    .line 4437
    :sswitch_1
    const v7, 0x7f03000a

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    move-object/from16 v0, p3

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-object v6, v0

    invoke-static {v7, p0, v5, v6}, Lcom/sec/android/app/twlauncher/FolderIcon;->fromXml(ILcom/sec/android/app/twlauncher/Launcher;Landroid/view/ViewGroup;Lcom/sec/android/app/twlauncher/UserFolderInfo;)Lcom/sec/android/app/twlauncher/FolderIcon;

    move-result-object v5

    .line 4440
    move-object/from16 v0, p3

    iget v0, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    move v6, v0

    move-object/from16 v0, p3

    iget v0, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    move v7, v0

    move-object/from16 v0, p3

    iget v0, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    move v8, v0

    const/4 v9, 0x1

    const/4 v10, 0x1

    if-nez v12, :cond_1

    const/4 v11, 0x1

    :goto_3
    invoke-virtual/range {v4 .. v11}, Lcom/sec/android/app/twlauncher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    goto :goto_3

    .line 4444
    :sswitch_2
    const v7, 0x7f03000e

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    move-object/from16 v0, p3

    check-cast v0, Lcom/sec/android/app/twlauncher/LiveFolderInfo;

    move-object v6, v0

    invoke-static {v7, p0, v5, v6}, Lcom/sec/android/app/twlauncher/LiveFolderIcon;->fromXml(ILcom/sec/android/app/twlauncher/Launcher;Landroid/view/ViewGroup;Lcom/sec/android/app/twlauncher/LiveFolderInfo;)Lcom/sec/android/app/twlauncher/LiveFolderIcon;

    move-result-object v5

    .line 4448
    move-object/from16 v0, p3

    iget v0, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    move v6, v0

    move-object/from16 v0, p3

    iget v0, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    move v7, v0

    move-object/from16 v0, p3

    iget v0, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    move v8, v0

    const/4 v9, 0x1

    const/4 v10, 0x1

    if-nez v12, :cond_2

    const/4 v11, 0x1

    :goto_4
    invoke-virtual/range {v4 .. v11}, Lcom/sec/android/app/twlauncher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    goto/16 :goto_1

    :cond_2
    const/4 v11, 0x0

    goto :goto_4

    .line 4452
    :sswitch_3
    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v5

    .line 4453
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f03001a

    invoke-virtual {v4, v5}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 4456
    const v5, 0x7f06004e

    invoke-virtual {v6, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/twlauncher/Search;

    .line 4457
    invoke-virtual {v5, p0}, Lcom/sec/android/app/twlauncher/Search;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 4459
    check-cast p3, Lcom/sec/android/app/twlauncher/Widget;

    .line 4460
    move-object v0, v6

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 4462
    if-nez v12, :cond_3

    const/4 v5, 0x1

    :goto_5
    move-object v0, v4

    move-object v1, v6

    move-object/from16 v2, p3

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/Workspace;->addWidget(Landroid/view/View;Lcom/sec/android/app/twlauncher/Widget;Z)V

    goto/16 :goto_1

    :cond_3
    const/4 v5, 0x0

    goto :goto_5

    .line 4467
    :cond_4
    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Workspace;->requestLayout()V

    .line 4469
    move v0, v13

    move/from16 v1, p4

    if-ge v0, v1, :cond_6

    .line 4470
    move-object/from16 v0, p1

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->continueBindingItems(I)V

    .line 4476
    :cond_5
    :goto_6
    return-void

    .line 4472
    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->finishBindDesktopItems()V

    .line 4473
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->startBindingApplications()Z

    move-result v4

    if-nez v4, :cond_5

    .line 4474
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->startBindingAppWidgets()V

    goto :goto_6

    .line 4427
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x3e9 -> :sswitch_3
    .end sparse-switch
.end method

.method private bindSamsungAppWidgetExternal()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const-string v3, "widgetInstall"

    const-string v6, "packageName"

    const-string v4, "className"

    const-string v8, "Launcher"

    .line 6571
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 6572
    if-nez v0, :cond_1

    .line 6629
    :cond_0
    :goto_0
    return-void

    .line 6575
    :cond_1
    const-string v1, "widgetInstall"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 6576
    const-string v2, "widgetInstall"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 6577
    if-eqz v1, :cond_0

    .line 6580
    const-string v1, "packageName"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6581
    const-string v2, "className"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6582
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 6585
    const-string v3, "packageName"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 6586
    const-string v3, "className"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 6588
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Workspace;->findAllVacantCellsFromModel()Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 6589
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-nez v3, :cond_2

    .line 6590
    const-string v3, "Launcher"

    const-string v3, "Failed to get Add Item Cell Info from findAllVacantCellsFromModel"

    invoke-static {v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6597
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    const-string v4, "com.samsung.sec.android.SAMSUNG_WIDGET.themename"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v2, v0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->findWidget(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    move-result-object v0

    .line 6599
    if-eqz v0, :cond_3

    .line 6601
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->addSamsungWidget(Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;)V

    goto :goto_0

    .line 6592
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v4

    iput v4, v3, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    goto :goto_1

    .line 6604
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v3

    .line 6605
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 6606
    :goto_2
    if-ge v5, v4, :cond_0

    .line 6607
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    .line 6608
    iget-object v6, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.sec.android.widgetapp"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 6606
    :cond_4
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_2

    .line 6611
    :cond_5
    iget-object v6, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 6612
    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 6614
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 6615
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v1

    .line 6616
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 6617
    invoke-virtual {v2, v6, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6618
    const-string v0, "appWidgetId"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6620
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V

    .line 6621
    const/4 v0, 0x5

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/twlauncher/Launcher;->onActivityResult(IILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 6622
    :catch_0
    move-exception v0

    .line 6623
    const-string v1, "Launcher"

    const-string v1, "Failed to bind AppWidget"

    invoke-static {v8, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method private bindSamsungAppWidgets(Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;Ljava/util/LinkedList;)V
    .locals 14
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v6, -0x2

    const/4 v11, 0x0

    const-string v13, "Launcher"

    .line 4589
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    .line 4590
    iget-boolean v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopLocked:Z

    .line 4592
    invoke-virtual/range {p2 .. p2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4593
    invoke-virtual/range {p2 .. p2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    move-object v9, v0

    .line 4595
    iget-object v10, v9, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->intent:Landroid/content/Intent;

    .line 4596
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 4603
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v5, "com.samsung.sec.android.SAMSUNG_WIDGET.themename"

    invoke-virtual {v10, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v2, v5}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->findWidget(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    move-result-object v2

    .line 4606
    if-eqz v2, :cond_5

    .line 4607
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    invoke-virtual {v3, p0, v2, v9}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->createWidget(Landroid/content/Context;Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    .line 4609
    iget-object v2, v9, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetView:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;

    .line 4610
    invoke-virtual {v2, v9}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->setTag(Ljava/lang/Object;)V

    .line 4612
    iget v3, v9, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    iget v4, v9, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    iget v5, v9, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    iget v6, v9, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    iget v7, v9, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    if-nez v8, :cond_4

    move v8, v12

    :goto_0
    invoke-virtual/range {v1 .. v8}, Lcom/sec/android/app/twlauncher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 4615
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->requestLayout()V

    .line 4632
    :goto_1
    const-string v2, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "added a item in workspace (type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v9, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4633
    const-string v2, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--> intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4637
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4638
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->invalidate()V

    .line 4641
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->isOpened()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4642
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->invalidate()V

    .line 4645
    :cond_2
    invoke-virtual/range {p2 .. p2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 4650
    sget v2, Lcom/sec/android/app/twlauncher/Launcher;->sScreen:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->resumeScreen(I)V

    .line 4651
    iput-boolean v11, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopLocked:Z

    .line 4652
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    .line 4655
    iget v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteIndex:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_3

    .line 4656
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewWorkspace()Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteIndex:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setDeleteIndex(I)V

    .line 4662
    :cond_3
    :goto_2
    return-void

    :cond_4
    move v8, v11

    .line 4612
    goto :goto_0

    .line 4617
    :cond_5
    new-instance v2, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;

    invoke-direct {v2, p0}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;-><init>(Landroid/content/Context;)V

    .line 4618
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 4621
    const/16 v4, 0x11

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 4622
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->getErrorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4623
    invoke-virtual {v2, v9}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->setTag(Ljava/lang/Object;)V

    .line 4624
    iput-object v2, v9, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetView:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;

    .line 4626
    iget v3, v9, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    iget v4, v9, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    iget v5, v9, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    iget v6, v9, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    iget v7, v9, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    if-nez v8, :cond_6

    move v8, v12

    :goto_3
    invoke-virtual/range {v1 .. v8}, Lcom/sec/android/app/twlauncher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 4629
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->requestLayout()V

    goto/16 :goto_1

    :cond_6
    move v8, v11

    .line 4626
    goto :goto_3

    .line 4659
    :cond_7
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->startBindingSamsungAppWidgets()V

    goto :goto_2
.end method

.method private checkForLocaleChange()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 1140
    new-instance v2, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;

    const/4 v10, 0x0

    invoke-direct {v2, v10}, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;-><init>(Lcom/sec/android/app/twlauncher/Launcher$1;)V

    .line 1141
    .local v2, localeConfiguration:Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;
    invoke-static {p0, v2}, Lcom/sec/android/app/twlauncher/Launcher;->readConfiguration(Landroid/content/Context;Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;)V

    .line 1143
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1145
    .local v0, configuration:Landroid/content/res/Configuration;
    iget-object v5, v2, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 1146
    .local v5, previousLocale:Ljava/lang/String;
    iget-object v10, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v10}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1148
    .local v1, locale:Ljava/lang/String;
    iget v6, v2, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;->mcc:I

    .line 1149
    .local v6, previousMcc:I
    iget v3, v0, Landroid/content/res/Configuration;->mcc:I

    .line 1151
    .local v3, mcc:I
    iget v7, v2, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;->mnc:I

    .line 1152
    .local v7, previousMnc:I
    iget v4, v0, Landroid/content/res/Configuration;->mnc:I

    .line 1154
    .local v4, mnc:I
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    if-ne v3, v6, :cond_0

    if-eq v4, v7, :cond_4

    :cond_0
    move v10, v11

    :goto_0
    iput-boolean v10, p0, Lcom/sec/android/app/twlauncher/Launcher;->mLocaleChanged:Z

    .line 1157
    iget v8, v2, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;->themePackageSeq:I

    .line 1158
    .local v8, previousThemePackageSeq:I
    iget v9, v0, Landroid/content/res/Configuration;->themePackageSeq:I

    .line 1162
    .local v9, themePackageSeq:I
    if-eq v9, v8, :cond_1

    .line 1163
    iput-boolean v11, p0, Lcom/sec/android/app/twlauncher/Launcher;->mLocaleChanged:Z

    .line 1167
    :cond_1
    iget-boolean v10, p0, Lcom/sec/android/app/twlauncher/Launcher;->mLocaleChanged:Z

    if-eqz v10, :cond_2

    .line 1168
    iput-object v1, v2, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 1169
    iput v3, v2, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;->mcc:I

    .line 1170
    iput v4, v2, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;->mnc:I

    .line 1172
    iput v9, v2, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;->themePackageSeq:I

    .line 1175
    invoke-static {p0, v2}, Lcom/sec/android/app/twlauncher/Launcher;->writeConfiguration(Landroid/content/Context;Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;)V

    .line 1181
    :cond_2
    iget-boolean v10, p0, Lcom/sec/android/app/twlauncher/Launcher;->mLocaleChanged:Z

    sget-object v11, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v11}, Lcom/sec/android/app/twlauncher/LauncherModel;->getPkgModFlag()Z

    move-result v11

    or-int/2addr v10, v11

    iput-boolean v10, p0, Lcom/sec/android/app/twlauncher/Launcher;->mLocaleChanged:Z

    .line 1182
    iget-boolean v10, p0, Lcom/sec/android/app/twlauncher/Launcher;->mLocaleChanged:Z

    if-eqz v10, :cond_3

    .line 1187
    sget-object v10, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v10}, Lcom/sec/android/app/twlauncher/LauncherModel;->getMenuManagerUserFolderModel()Lcom/sec/android/app/twlauncher/UserFolderModel;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/twlauncher/UserFolderModel;->clear()V

    .line 1189
    :cond_3
    return-void

    .line 1154
    .end local v8           #previousThemePackageSeq:I
    .end local v9           #themePackageSeq:I
    :cond_4
    const/4 v10, 0x0

    goto :goto_0
.end method

.method private checkSamsungAppWidgetExternal()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 6554
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 6555
    if-nez v0, :cond_0

    move v0, v3

    .line 6567
    :goto_0
    return v0

    .line 6558
    :cond_0
    const-string v1, "widgetInstall"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 6559
    if-nez v1, :cond_1

    move v0, v3

    .line 6560
    goto :goto_0

    .line 6562
    :cond_1
    const-string v1, "packageName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6563
    const-string v2, "className"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6564
    if-eqz v1, :cond_2

    if-nez v0, :cond_3

    :cond_2
    move v0, v3

    .line 6565
    goto :goto_0

    .line 6567
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private clearTypedText()V
    .locals 2

    .prologue
    .line 1757
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1758
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 1759
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1760
    return-void
.end method

.method private closeDrawer(Z)V
    .locals 4
    .parameter "animated"

    .prologue
    .line 4200
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    .line 4201
    .local v0, mm:Lcom/sec/android/app/twlauncher/MenuManager;
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    .line 4203
    .local v1, ws:Lcom/sec/android/app/twlauncher/Workspace;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4204
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 4205
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->menudiscard()V

    .line 4207
    :cond_0
    if-eqz p1, :cond_3

    .line 4208
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->animateClose()V

    .line 4209
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->animateOpen()V

    .line 4213
    :goto_0
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4214
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 4220
    :cond_1
    const/16 v2, 0x10

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/Launcher;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4225
    :goto_1
    const/16 v2, 0x11

    :try_start_1
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/Launcher;->dismissDialog(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 4234
    :cond_2
    :goto_2
    return-void

    .line 4211
    :cond_3
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->close()V

    goto :goto_0

    .line 4221
    :catch_0
    move-exception v2

    goto :goto_1

    .line 4226
    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method private closeFolder()V
    .locals 2

    .prologue
    .line 4237
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getOpenFolder()Lcom/sec/android/app/twlauncher/Folder;

    move-result-object v0

    .line 4238
    .local v0, folder:Lcom/sec/android/app/twlauncher/Folder;
    if-eqz v0, :cond_0

    .line 4239
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Folder;->close()V

    .line 4241
    :cond_0
    return-void
.end method

.method private completeAddAppWidget(ILcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V
    .locals 22
    .parameter
    .parameter

    .prologue
    .line 2222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v16

    .line 2223
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->getWidgetMultipleSize(Landroid/appwidget/AppWidgetProviderInfo;)Lcom/sec/android/app/twlauncher/MultipleSize;

    move-result-object v11

    .line 2224
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.sec.android.widgetapp"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    .line 2229
    move-object/from16 v0, p2

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v6

    if-lt v5, v6, :cond_0

    .line 2230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v5

    move v0, v5

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    .line 2233
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    move-object v5, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    move v6, v0

    invoke-virtual {v5, v6}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v5

    .line 2235
    move-object/from16 v0, v16

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    move v6, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    move v7, v0

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/app/twlauncher/CellLayout;->rectToCell(II)[I

    move-result-object v13

    .line 2238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mCellCoordinates:[I

    move-object v7, v0

    .line 2239
    const/4 v5, 0x0

    aget v8, v13, v5

    const/4 v5, 0x1

    aget v9, v13, v5

    if-nez v12, :cond_5

    const/4 v5, 0x1

    move v10, v5

    :goto_0
    move-object/from16 v5, p0

    move-object/from16 v6, p2

    invoke-direct/range {v5 .. v10}, Lcom/sec/android/app/twlauncher/Launcher;->findSlot(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;[IIIZ)Z

    move-result v5

    if-nez v5, :cond_d

    .line 2240
    const/4 v5, 0x0

    .line 2242
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetId:I

    .line 2243
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 2244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mSpans:[I

    move-object v6, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    aget v9, v13, v9

    aput v9, v6, v8

    .line 2245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mSpans:[I

    move-object v6, v0

    const/4 v8, 0x1

    const/4 v9, 0x1

    aget v9, v13, v9

    aput v9, v6, v8

    .line 2247
    const/4 v6, 0x2

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetType:I

    .line 2249
    if-eqz v12, :cond_3

    .line 2250
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->loadSupportCellSizes(Landroid/appwidget/AppWidgetProviderInfo;)[Ljava/lang/String;

    move-result-object v6

    .line 2251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    move-object v8, v0

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v8

    .line 2253
    if-eqz v6, :cond_10

    array-length v9, v6

    const/4 v10, 0x1

    if-le v9, v10, :cond_10

    .line 2254
    const/4 v9, -0x1

    .line 2255
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x0

    aget v12, v13, v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "x"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v12, 0x1

    aget v12, v13, v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2256
    const/4 v12, 0x0

    :goto_1
    array-length v14, v6

    if-ge v12, v14, :cond_1

    .line 2257
    aget-object v14, v6, v12

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    move v9, v12

    .line 2263
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    move-object v10, v0

    invoke-virtual {v10}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v10

    .line 2265
    const/4 v12, 0x0

    move/from16 v21, v12

    move v12, v5

    move/from16 v5, v21

    :goto_2
    if-ge v5, v10, :cond_f

    .line 2266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    move-object v14, v0

    invoke-virtual {v14, v8}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v14

    move v15, v9

    .line 2268
    :goto_3
    if-ltz v15, :cond_2

    .line 2269
    aget-object v17, v6, v15

    .line 2270
    const/16 v18, 0x0

    const/16 v19, 0x78

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v19

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 2272
    const/16 v19, 0x78

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v19

    add-int/lit8 v19, v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 2274
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v0, v14

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/CellLayout;->findAllVacantCells([ZLandroid/view/View;)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v19

    .line 2275
    move-object/from16 v0, v19

    move-object v1, v7

    move/from16 v2, v18

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->findCellForSpan([III)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 2276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mSpans:[I

    move-object v12, v0

    const/4 v14, 0x0

    const/4 v15, 0x0

    aput v18, v13, v15

    aput v18, v12, v14

    .line 2277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mSpans:[I

    move-object v12, v0

    const/4 v14, 0x1

    const/4 v15, 0x1

    aput v17, v13, v15

    aput v17, v12, v14

    .line 2278
    const/4 v12, 0x1

    .line 2279
    const/4 v14, 0x0

    aget v14, v13, v14

    const/4 v15, 0x1

    aget v15, v13, v15

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move v1, v14

    move v2, v15

    move-object/from16 v3, v17

    move/from16 v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/Launcher;->sendWidgetResizeIntent(IILandroid/content/ComponentName;I)V

    .line 2284
    :cond_2
    if-eqz v12, :cond_8

    move v5, v8

    move v6, v12

    .line 2296
    :goto_4
    if-nez v6, :cond_a

    .line 2297
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->showWidgetMessage(Z)V

    move v5, v6

    .line 2312
    :cond_3
    :goto_5
    if-nez v5, :cond_d

    .line 2313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->isAllPageSlot(I)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 2314
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    .line 2353
    :cond_4
    :goto_6
    return-void

    .line 2239
    :cond_5
    const/4 v5, 0x0

    move v10, v5

    goto/16 :goto_0

    .line 2256
    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 2268
    :cond_7
    add-int/lit8 v15, v15, -0x1

    goto/16 :goto_3

    .line 2288
    :cond_8
    add-int/lit8 v8, v8, 0x1

    .line 2289
    if-ne v8, v10, :cond_9

    .line 2290
    const/4 v8, 0x0

    .line 2265
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 2301
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    move-object v8, v0

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v8

    if-eq v5, v8, :cond_b

    .line 2302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    move-object v6, v0

    const/4 v7, 0x0

    aput v5, v6, v7

    .line 2303
    const/4 v5, 0x2

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->prepareWidgetPreview(I)V

    .line 2304
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->showWidgetMessage(Z)V

    goto :goto_6

    .line 2307
    :cond_b
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetType:I

    move v5, v6

    goto :goto_5

    .line 2316
    :cond_c
    const/4 v5, 0x2

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->prepareWidgetPreview(I)V

    goto :goto_6

    .line 2323
    :cond_d
    new-instance v9, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    move-object v0, v9

    move/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;-><init>(I)V

    .line 2324
    const/4 v5, 0x0

    aget v5, v13, v5

    iput v5, v9, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    .line 2325
    const/4 v5, 0x1

    aget v5, v13, v5

    iput v5, v9, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    .line 2326
    invoke-virtual {v11}, Lcom/sec/android/app/twlauncher/MultipleSize;->toLong()J

    move-result-wide v5

    iput-wide v5, v9, Lcom/sec/android/app/twlauncher/ItemInfo;->longMs:J

    .line 2328
    const-wide/16 v10, -0x64

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v12

    const/4 v5, 0x0

    aget v13, v7, v5

    const/4 v5, 0x1

    aget v14, v7, v5

    const/4 v15, 0x0

    move-object/from16 v8, p0

    invoke-static/range {v8 .. v15}, Lcom/sec/android/app/twlauncher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIIIZ)V

    .line 2332
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mRestoring:Z

    move v5, v0

    if-nez v5, :cond_e

    .line 2333
    sget-object v5, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v5, v9}, Lcom/sec/android/app/twlauncher/LauncherModel;->addDesktopAppWidget(Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;)V

    .line 2336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHostContext:Landroid/content/MutableContextWrapper;

    move-object v6, v0

    move-object v0, v5

    move-object v1, v6

    move/from16 v2, p1

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v5

    iput-object v5, v9, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 2338
    iget-object v5, v9, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object v0, v5

    move/from16 v1, p1

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 2339
    iget-object v5, v9, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v5, v9}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 2341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    move-object v5, v0

    iget-object v6, v9, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    const/4 v8, 0x0

    aget v12, v7, v8

    const/4 v8, 0x1

    aget v8, v7, v8

    iget v13, v9, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    iget v10, v9, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->minsertAtFirst:Z

    move v11, v0

    move v7, v12

    move v9, v13

    invoke-virtual/range {v5 .. v11}, Lcom/sec/android/app/twlauncher/Workspace;->addInCurrentScreen(Landroid/view/View;IIIIZ)V

    goto/16 :goto_6

    .line 2343
    :cond_e
    sget-object v5, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/LauncherModel;->isDesktopLoaded()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2344
    sget-object v5, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v5, v9}, Lcom/sec/android/app/twlauncher/LauncherModel;->addDesktopAppWidget(Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;)V

    goto/16 :goto_6

    :cond_f
    move v5, v8

    move v6, v12

    goto/16 :goto_4

    :cond_10
    move v6, v5

    move v5, v8

    goto/16 :goto_4
.end method

.method private completeAddAppWidget(Landroid/content/Intent;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2204
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 2205
    const-string v1, "appWidgetId"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2208
    const-string v2, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "completeAddAppWidget(): dumping extras content="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2210
    iput-boolean p3, p0, Lcom/sec/android/app/twlauncher/Launcher;->minsertAtFirst:Z

    .line 2212
    invoke-direct {p0, v1, p2}, Lcom/sec/android/app/twlauncher/Launcher;->completeAddAppWidget(ILcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    .line 2213
    return-void
.end method

.method private completeAddLiveFolder(Landroid/content/Intent;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 3869
    invoke-virtual {p0, p2}, Lcom/sec/android/app/twlauncher/Launcher;->findPreferredSingleSlotOrAnySlot(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)I

    move-result v0

    .line 3870
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 3888
    :cond_0
    :goto_0
    return-void

    .line 3872
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 3873
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(I)V

    .line 3876
    :cond_2
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/sec/android/app/twlauncher/Launcher;->addLiveFolder(Landroid/content/Context;Landroid/content/Intent;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)Lcom/sec/android/app/twlauncher/LiveFolderInfo;

    move-result-object v1

    .line 3878
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRestoring:Z

    if-nez v0, :cond_3

    .line 3879
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->addDesktopItem(Lcom/sec/android/app/twlauncher/ItemInfo;)V

    .line 3881
    const v2, 0x7f03000e

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v2, p0, v0, v1}, Lcom/sec/android/app/twlauncher/LiveFolderIcon;->fromXml(ILcom/sec/android/app/twlauncher/Launcher;Landroid/view/ViewGroup;Lcom/sec/android/app/twlauncher/LiveFolderInfo;)Lcom/sec/android/app/twlauncher/LiveFolderIcon;

    move-result-object v1

    .line 3883
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget v2, p2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    iget v3, p2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    iget v4, p2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    move v6, v5

    move v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    goto :goto_0

    .line 3885
    :cond_3
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->isDesktopLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3886
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->addDesktopItem(Lcom/sec/android/app/twlauncher/ItemInfo;)V

    goto :goto_0
.end method

.method private completeAddShortcut(Landroid/content/Intent;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)V
    .locals 3
    .parameter "data"
    .parameter "cellInfo"
    .parameter "insertAtFirst"

    .prologue
    .line 2156
    invoke-virtual {p0, p2}, Lcom/sec/android/app/twlauncher/Launcher;->findPreferredSingleSlotOrAnySlot(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)I

    move-result v1

    .line 2157
    .local v1, page:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 2173
    :cond_0
    :goto_0
    return-void

    .line 2159
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 2160
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(I)V

    .line 2163
    :cond_2
    const/4 v2, 0x0

    invoke-static {p0, p1, p2, v2}, Lcom/sec/android/app/twlauncher/Launcher;->addShortcut(Landroid/content/Context;Landroid/content/Intent;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v0

    .line 2164
    .local v0, info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRestoring:Z

    if-nez v2, :cond_3

    .line 2169
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2, v0, p2, p3}, Lcom/sec/android/app/twlauncher/Workspace;->addApplicationShortcut(Lcom/sec/android/app/twlauncher/ApplicationInfo;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)V

    goto :goto_0

    .line 2170
    :cond_3
    sget-object v2, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->isDesktopLoaded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2171
    sget-object v2, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->addDesktopItem(Lcom/sec/android/app/twlauncher/ItemInfo;)V

    goto :goto_0
.end method

.method private completePreviewAppWidget()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 2398
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    if-nez v0, :cond_0

    .line 2399
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    .line 2414
    :goto_0
    return-void

    .line 2402
    :cond_0
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCellCoordinates:[I

    .line 2404
    .local v9, xy:[I
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    .line 2406
    .local v1, launcherInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->addDesktopAppWidget(Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;)V

    .line 2408
    const-wide/16 v2, -0x64

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v4

    aget v5, v9, v7

    aget v6, v9, v10

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIIIZ)V

    .line 2412
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget-object v3, v1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    aget v4, v9, v7

    aget v5, v9, v10

    iget v6, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    iget v0, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    iget-boolean v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopLocked:Z

    if-nez v8, :cond_1

    move v8, v10

    :goto_1
    move v7, v0

    invoke-virtual/range {v2 .. v8}, Lcom/sec/android/app/twlauncher/Workspace;->addInCurrentScreen(Landroid/view/View;IIIIZ)V

    goto :goto_0

    :cond_1
    move v8, v7

    goto :goto_1
.end method

.method private createBlankPage()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 6999
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    aget v0, v0, v4

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    if-eq v0, v3, :cond_1

    :cond_0
    move v0, v3

    .line 7015
    :goto_0
    return v0

    .line 7001
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    .line 7002
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v2

    .line 7003
    sget v0, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    if-ge v2, v0, :cond_2

    .line 7004
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f03001b

    invoke-virtual {v0, v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 7006
    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/CellLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 7008
    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/Workspace;->addView(Landroid/view/View;)V

    .line 7010
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    aput v2, v0, v4

    .line 7011
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->saveScreenInfo()V

    move v0, v2

    .line 7013
    goto :goto_0

    :cond_2
    move v0, v3

    .line 7015
    goto :goto_0
.end method

.method public static createUserFolderInfo(I)Lcom/sec/android/app/twlauncher/UserFolderInfo;
    .locals 1
    .parameter "aOwner"

    .prologue
    .line 3827
    new-instance v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;-><init>()V

    .line 3828
    .local v0, info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setOwner(I)V

    .line 3829
    return-object v0
.end method

.method private findSlot(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;[III)Z
    .locals 6
    .parameter "cellInfo"
    .parameter "xy"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 4003
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/Launcher;->findSlot(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;[IIIZ)Z

    move-result v0

    return v0
.end method

.method private findSlot(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;[IIIZ)Z
    .locals 5
    .parameter "cellInfo"
    .parameter "xy"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "showMessage"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4008
    invoke-virtual {p1, p2, p3, p4}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->findCellForSpan([III)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4009
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSavedState:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSavedState:Landroid/os/Bundle;

    const-string v2, "launcher.add_occupied_cells"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v1

    move-object v0, v1

    .line 4011
    .local v0, occupied:[Z
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/Workspace;->findAllVacantCells([Z)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object p1

    .line 4012
    if-eqz p1, :cond_2

    invoke-virtual {p1, p2, p3, p4}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->findCellForSpan([III)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4013
    if-nez p5, :cond_1

    move v1, v3

    .line 4019
    .end local v0           #occupied:[Z
    :goto_1
    return v1

    .line 4009
    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0

    .line 4015
    .restart local v0       #occupied:[Z
    :cond_1
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/Launcher;->showWidgetMessage(Z)V

    move v1, v3

    .line 4016
    goto :goto_1

    .end local v0           #occupied:[Z
    :cond_2
    move v1, v4

    .line 4019
    goto :goto_1
.end method

.method private finishBindDesktopItems()V
    .locals 11

    .prologue
    const/4 v10, -0x1

    .line 4479
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSavedState:Landroid/os/Bundle;

    if-eqz v8, :cond_4

    .line 4480
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/Workspace;->hasFocus()Z

    move-result v8

    if-nez v8, :cond_0

    .line 4481
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    .line 4484
    :cond_0
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSavedState:Landroid/os/Bundle;

    const-string v9, "launcher.user_folder"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v7

    .line 4485
    .local v7, userFolders:[J
    if-eqz v7, :cond_3

    .line 4486
    move-object v0, v7

    .local v0, arr$:[J
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_2

    aget-wide v1, v0, v3

    .line 4487
    .local v1, folderId:J
    sget-object v8, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v8, v1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->findFolderById(J)Lcom/sec/android/app/twlauncher/FolderInfo;

    move-result-object v4

    .line 4488
    .local v4, info:Lcom/sec/android/app/twlauncher/FolderInfo;
    if-eqz v4, :cond_1

    .line 4489
    invoke-direct {p0, v4}, Lcom/sec/android/app/twlauncher/Launcher;->openFolder(Lcom/sec/android/app/twlauncher/FolderInfo;)V

    .line 4486
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4492
    .end local v1           #folderId:J
    .end local v4           #info:Lcom/sec/android/app/twlauncher/FolderInfo;
    :cond_2
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/Workspace;->getOpenFolder()Lcom/sec/android/app/twlauncher/Folder;

    move-result-object v6

    .line 4493
    .local v6, openFolder:Lcom/sec/android/app/twlauncher/Folder;
    if-eqz v6, :cond_3

    .line 4494
    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Folder;->requestFocus()Z

    .line 4498
    .end local v0           #arr$:[J
    .end local v3           #i$:I
    .end local v5           #len$:I
    .end local v6           #openFolder:Lcom/sec/android/app/twlauncher/Folder;
    :cond_3
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSavedState:Landroid/os/Bundle;

    .line 4501
    .end local v7           #userFolders:[J
    :cond_4
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    if-eqz v8, :cond_5

    .line 4502
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-super {p0, v8}, Landroid/app/ActivityGroup;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 4506
    :cond_5
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/MenuManager;->hasFocus()Z

    move-result v8

    if-nez v8, :cond_6

    .line 4507
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/MenuManager;->requestFocus()Z

    .line 4511
    :cond_6
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/MenuManager;->unlock()V

    .line 4513
    iget v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_8

    .line 4514
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->openQuickViewMainMenu()V

    .line 4515
    iput v10, p0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    .line 4520
    :cond_7
    :goto_1
    return-void

    .line 4516
    :cond_8
    iget v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    if-nez v8, :cond_7

    .line 4517
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->openQuickViewWorkspace()V

    .line 4518
    iput v10, p0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    goto :goto_1
.end method

.method private getBatteryLevel()Ljava/lang/String;
    .locals 6

    .prologue
    .line 993
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 994
    const/4 v1, 0x0

    .line 997
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/sys/class/power_supply/battery/capacity"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x1000

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1001
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1002
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    goto :goto_0

    .line 1004
    :catch_0
    move-exception v1

    .line 1005
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1009
    if-eqz v2, :cond_0

    .line 1011
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 1016
    :cond_0
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1009
    :cond_1
    if-eqz v2, :cond_0

    .line 1011
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 1012
    :catch_1
    move-exception v1

    goto :goto_2

    .line 1006
    :catch_2
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    .line 1007
    :goto_3
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1009
    if-eqz v2, :cond_0

    .line 1011
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    .line 1012
    :catch_3
    move-exception v1

    goto :goto_2

    .line 1009
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v1, :cond_2

    .line 1011
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 1013
    :cond_2
    :goto_5
    throw v0

    .line 1012
    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_5

    .line 1009
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_4

    .line 1006
    :catch_6
    move-exception v1

    goto :goto_3

    .line 1004
    :catch_7
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_1
.end method

.method static getModel()Lcom/sec/android/app/twlauncher/LauncherModel;
    .locals 1

    .prologue
    .line 4898
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    return-object v0
.end method

.method static getScreen()I
    .locals 2

    .prologue
    .line 1256
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1257
    :try_start_0
    sget v1, Lcom/sec/android/app/twlauncher/Launcher;->sScreen:I

    monitor-exit v0

    return v1

    .line 1258
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getTypedText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1753
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleBackKey(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 3115
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    if-nez v0, :cond_2

    .line 3117
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 3166
    :goto_0
    return v0

    .line 3119
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelRemovePage()V

    .line 3120
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->cancelDrag()V

    .line 3121
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawCloseAnimation()V

    .line 3122
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->invalidate()V

    move v0, v1

    .line 3124
    goto :goto_0

    .line 3126
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->isOpened()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    if-ne v0, v1, :cond_4

    .line 3128
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->cancelDrag()V

    .line 3129
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->drawCloseAnimation()V

    .line 3130
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->invalidate()V

    move v0, v1

    .line 3132
    goto :goto_0

    .line 3134
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->deactivateAllScrollMenus()V

    .line 3135
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3138
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/DragLayer;->cancelDrag()V

    .line 3139
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->closeFolderOnCurrentPage()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    .line 3140
    goto :goto_0

    .line 3142
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 3150
    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->closeDrawer(Z)V

    move v0, v1

    .line 3151
    goto :goto_0

    .line 3144
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherManager;->handleBackKey()Z

    move-result v0

    if-nez v0, :cond_6

    .line 3145
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->menusave()Z

    :cond_6
    move v0, v1

    .line 3147
    goto :goto_0

    .line 3157
    :cond_7
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeFolder()V

    .line 3161
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_8

    .line 3162
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 3165
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->finishAppWidgetResize()V

    move v0, v1

    .line 3166
    goto :goto_0

    .line 3142
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private handleFolderClick(Lcom/sec/android/app/twlauncher/FolderInfo;)V
    .locals 3
    .parameter "folderInfo"

    .prologue
    .line 4755
    iget-boolean v2, p1, Lcom/sec/android/app/twlauncher/FolderInfo;->opened:Z

    if-nez v2, :cond_1

    .line 4757
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeFolder()V

    .line 4759
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->openFolder(Lcom/sec/android/app/twlauncher/FolderInfo;)V

    .line 4781
    :cond_0
    :goto_0
    return-void

    .line 4762
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/twlauncher/Workspace;->getFolderForTag(Ljava/lang/Object;)Lcom/sec/android/app/twlauncher/Folder;

    move-result-object v1

    .line 4764
    .local v1, openFolder:Lcom/sec/android/app/twlauncher/Folder;
    if-eqz v1, :cond_2

    .line 4765
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenForView(Landroid/view/View;)I

    move-result v0

    .line 4767
    .local v0, folderScreen:I
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Folder;->close()V

    .line 4768
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 4770
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeFolder()V

    .line 4772
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->openFolder(Lcom/sec/android/app/twlauncher/FolderInfo;)V

    goto :goto_0

    .line 4776
    .end local v0           #folderScreen:I
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeFolder()V

    .line 4778
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->openFolder(Lcom/sec/android/app/twlauncher/FolderInfo;)V

    goto :goto_0
.end method

.method private static infoFromApplicationIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 2089
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 2090
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2093
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2101
    :goto_0
    if-eqz v2, :cond_3

    .line 2102
    new-instance v3, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-direct {v3}, Lcom/sec/android/app/twlauncher/ApplicationInfo;-><init>()V

    .line 2104
    invoke-virtual {v2, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 2105
    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    if-nez v4, :cond_0

    .line 2106
    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 2109
    :cond_0
    const/high16 v4, 0x1020

    invoke-virtual {v3, v0, v4}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setActivity(Landroid/content/ComponentName;I)V

    .line 2111
    invoke-virtual {v2, v1}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v3, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 2112
    const-wide/16 v0, -0x1

    iput-wide v0, v3, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    .line 2114
    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2115
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_1

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_2

    .line 2117
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setSystemApp(Z)V

    .line 2122
    :goto_1
    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v0, v3, Lcom/sec/android/app/twlauncher/ItemInfo;->packageName:Ljava/lang/String;

    move-object v0, v3

    .line 2127
    :goto_2
    return-object v0

    .line 2097
    :catch_0
    move-exception v2

    .line 2098
    const-string v3, "Launcher"

    const-string v4, "Couldn\'t find ActivityInfo for selected application"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v6

    goto :goto_0

    .line 2119
    :cond_2
    invoke-virtual {v3, v5}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setSystemApp(Z)V

    goto :goto_1

    :cond_3
    move-object v0, v6

    .line 2127
    goto :goto_2
.end method

.method private static infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 2432
    const-string v1, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 2433
    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2434
    const-string v2, "android.intent.extra.shortcut.ICON"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 2441
    if-eqz v2, :cond_1

    .line 2442
    new-instance v3, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;

    invoke-static {v2, p0}, Lcom/sec/android/app/twlauncher/Utilities;->createBitmapThumbnail(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object v2, v9

    move-object v6, v3

    move v3, v5

    .line 2461
    :goto_0
    if-nez v6, :cond_0

    .line 2462
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 2465
    :cond_0
    new-instance v7, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-direct {v7}, Lcom/sec/android/app/twlauncher/ApplicationInfo;-><init>()V

    .line 2466
    iput-object v6, v7, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 2467
    invoke-virtual {v7, v5}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setFiltered(Z)V

    .line 2468
    invoke-virtual {v7, v4}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 2469
    invoke-virtual {v7, v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setIntent(Landroid/content/Intent;)V

    .line 2470
    invoke-virtual {v7, v3}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setIsCustomIcon(Z)V

    .line 2471
    iput-object v2, v7, Lcom/sec/android/app/twlauncher/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 2473
    return-object v7

    .line 2446
    :cond_1
    const-string v2, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .line 2447
    if-eqz v3, :cond_2

    instance-of v2, v3, Landroid/content/Intent$ShortcutIconResource;

    if-eqz v2, :cond_2

    .line 2449
    :try_start_0
    move-object v0, v3

    check-cast v0, Landroid/content/Intent$ShortcutIconResource;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2450
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 2451
    iget-object v6, v2, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v5

    .line 2453
    iget-object v6, v2, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 2454
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    move v5, v10

    move-object v6, v3

    move v3, v10

    .line 2457
    goto :goto_0

    .line 2455
    :catch_0
    move-exception v2

    move-object v2, v9

    .line 2456
    :goto_1
    const-string v5, "Launcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not load shortcut icon: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v10

    move v5, v10

    move-object v6, v9

    goto :goto_0

    .line 2455
    :catch_1
    move-exception v5

    goto :goto_1

    :cond_2
    move-object v2, v9

    move v3, v10

    move v5, v10

    move-object v6, v9

    goto :goto_0
.end method

.method private isMenuEditDialogAvailable()Z
    .locals 3

    .prologue
    .line 7655
    const-string v0, "launcher"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "MenuEditDialogOnOff"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isMotionDialogAvailable()Z
    .locals 3

    .prologue
    .line 7492
    const-string v0, "launcher"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "MotionDialogOnOff"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isMotionSettingOn()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7497
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_engine"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_panning"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private launchAppWidgetPicker()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 5635
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v3

    .line 5643
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5644
    const-string v1, "com.samsung.sec.android.SAMSUNG_APP_WIDGET_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5645
    const-string v1, "com.samsung.sec.android.SAMSUNG_APP_WIDGET"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 5646
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v12}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 5647
    if-nez v0, :cond_0

    .line 5701
    :goto_0
    return-void

    .line 5650
    :cond_0
    new-array v1, v12, [Landroid/content/pm/ResolveInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/ResolveInfo;

    .line 5651
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5652
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 5654
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 5655
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->getWidgetItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    .line 5657
    array-length v2, v0

    move v8, v12

    :goto_2
    if-ge v8, v2, :cond_8

    aget-object v9, v0, v8

    .line 5658
    iget-object v10, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v11, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v11, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mClassName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 5660
    iget-object v2, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v2

    move v8, v2

    .line 5666
    :goto_3
    iget-object v2, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mWidgetId:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 5668
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5669
    iget-object v10, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mWidgetId:Ljava/lang/String;

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v13

    move v9, v12

    .line 5676
    :goto_4
    if-nez v2, :cond_3

    .line 5677
    iget-object v2, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mWidgetId:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    move v2, v9

    .line 5680
    :goto_5
    if-eqz v2, :cond_1

    .line 5681
    new-instance v2, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {v2}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    .line 5682
    iget-object v9, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mWidgetTitle:Ljava/lang/String;

    iput-object v9, v2, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    .line 5683
    iput v8, v2, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    .line 5684
    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mPackageName:Ljava/lang/String;

    iget-object v10, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mClassName:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v8, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 5685
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5687
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 5688
    const-string v8, "custom_widget"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mClassName:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v8, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5689
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 5657
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 5693
    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5694
    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5695
    const-string v1, "customInfo"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 5697
    const-string v1, "customExtras"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 5700
    const/16 v1, 0x9

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_6
    move v2, v12

    move v9, v13

    goto :goto_4

    :cond_7
    move v2, v13

    goto :goto_5

    :cond_8
    move v8, v12

    goto/16 :goto_3
.end method

.method private makeBitmapMenuWallpaper()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 7178
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 7180
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuWallpaperBitmap:Landroid/graphics/Bitmap;

    .line 7181
    .local v0, bmp:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 7182
    .local v1, canvas:Landroid/graphics/Canvas;
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 7183
    const/16 v2, 0x99

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 7185
    new-instance v2, Lcom/sec/android/app/twlauncher/Launcher$WallpaperFastBitmapDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/sec/android/app/twlauncher/Launcher$WallpaperFastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDimWallpaperImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 7187
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v1           #canvas:Landroid/graphics/Canvas;
    :cond_0
    return-void
.end method

.method private onAppWidgetReset()V
    .locals 2

    .prologue
    .line 4257
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 4258
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;->startListening()V

    .line 4262
    :goto_0
    return-void

    .line 4260
    :cond_0
    const-string v0, "Launcher"

    const-string v1, "onAppWidgetReset() : DISCARD widget reset. Launcher destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onBadgeChanged()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const-string v0, "onBadgeChanged() "

    const-string v0, "Launcher"

    .line 4265
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->isApplicationsLoaded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4266
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v0, v14, p0, v14}, Lcom/sec/android/app/twlauncher/LauncherModel;->loadApplications(ZLcom/sec/android/app/twlauncher/Launcher;Z)Z

    .line 4322
    :cond_0
    :goto_0
    return-void

    .line 4270
    :cond_1
    const/4 v8, 0x0

    .line 4273
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.sec.badge/apps"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    .line 4284
    :goto_1
    if-eqz v8, :cond_0

    .line 4287
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 4290
    .local v13, updatedApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4292
    :cond_2
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 4293
    .local v12, packageName:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 4294
    .local v7, className:Ljava/lang/String;
    const/4 v0, 0x3

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 4297
    .local v6, badgeCount:I
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 4298
    .local v11, intent:Landroid/content/Intent;
    invoke-virtual {v11, v12, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4300
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->getApplicationInfo(Landroid/content/ComponentName;)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v10

    .line 4302
    .local v10, info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    if-eqz v10, :cond_3

    .line 4303
    invoke-virtual {v10, v6}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setBadgeCount(I)V

    .line 4304
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4306
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4309
    .end local v6           #badgeCount:I
    .end local v7           #className:Ljava/lang/String;
    .end local v10           #info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v11           #intent:Landroid/content/Intent;
    .end local v12           #packageName:Ljava/lang/String;
    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 4311
    iput-boolean v14, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsChangedBadge:Z

    .line 4313
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0, v13}, Lcom/sec/android/app/twlauncher/MenuManager;->updateDrawingCacheForApplicationBadgeCountChange(Ljava/util/List;)V

    .line 4314
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 4316
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->requestLayout()V

    .line 4319
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->invalidate()V

    .line 4321
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->updateWorkspaceBadge()V

    goto :goto_0

    .line 4276
    .end local v13           #updatedApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 4277
    .local v9, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBadgeChanged() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 4280
    .end local v9           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    throw v0

    .line 4278
    :catch_1
    move-exception v0

    move-object v9, v0

    .line 4279
    .local v9, e:Ljava/lang/IllegalStateException;
    :try_start_2
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBadgeChanged() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method

.method private onFavoritesChanged()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4248
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopLocked:Z

    .line 4249
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->lock()V

    .line 4250
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v0, v1, p0, v1, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->loadUserItems(ZLcom/sec/android/app/twlauncher/Launcher;ZZ)V

    .line 4251
    return-void
.end method

.method private onShareAppRequested()V
    .locals 3

    .prologue
    .line 3403
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3404
    const-string v1, "com.sec.android.app.shareapp"

    const-string v2, "com.sec.android.app.shareapp.ShareApp"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3405
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 3406
    return-void
.end method

.method private openFolder(Lcom/sec/android/app/twlauncher/FolderInfo;)V
    .locals 8
    .parameter "folderInfo"

    .prologue
    const/4 v3, 0x0

    .line 4826
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->getFolderUi(Lcom/sec/android/app/twlauncher/FolderInfo;)Lcom/sec/android/app/twlauncher/Folder;

    move-result-object v1

    .line 4827
    .local v1, openFolder:Lcom/sec/android/app/twlauncher/Folder;
    if-nez v1, :cond_0

    .line 4834
    :goto_0
    return-void

    .line 4830
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget v2, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v7

    .line 4831
    .local v7, screen:Lcom/sec/android/app/twlauncher/CellLayout;
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget v2, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/CellLayout;->getShortAxisCells()I

    move-result v5

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/CellLayout;->getLongAxisCells()I

    move-result v6

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/Workspace;->addInScreen(Landroid/view/View;IIIII)V

    .line 4833
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Folder;->onOpen()V

    goto :goto_0
.end method

.method private prepareWidgetPreview(I)V
    .locals 5
    .parameter "type"

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6795
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->lock()V

    .line 6797
    if-ne p1, v3, :cond_1

    .line 6798
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->previewAddSearch()V

    .line 6808
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->initAddWidget()V

    .line 6809
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetPreview:Lcom/sec/android/app/twlauncher/WidgetPreview;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/WidgetPreview;->setVisibility(I)V

    .line 6811
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/DragLayer;->invalidate()V

    .line 6813
    const/4 v0, -0x1

    .line 6814
    .local v0, blankscreen:I
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    aget v1, v1, v2

    if-eq v1, v4, :cond_4

    .line 6815
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    aget v0, v1, v2

    .line 6819
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/Workspace;->setAutoScrollScreen(I)V

    .line 6820
    .end local v0           #blankscreen:I
    :goto_2
    return-void

    .line 6799
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 6800
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->previewAppWidget()V

    goto :goto_0

    .line 6801
    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    .line 6802
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->previewAddSamsungWidget()V

    goto :goto_0

    .line 6804
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    goto :goto_2

    .line 6816
    .restart local v0       #blankscreen:I
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    aget v1, v1, v3

    if-eq v1, v4, :cond_0

    .line 6817
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    aget v0, v1, v3

    goto :goto_1
.end method

.method private previewAppWidget()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 2366
    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-nez v0, :cond_1

    .line 2367
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    .line 2395
    :goto_0
    return-void

    .line 2371
    :cond_1
    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetId:I

    .line 2372
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSpans:[I

    .line 2373
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 2376
    new-instance v3, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    invoke-direct {v3, v0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;-><init>(I)V

    .line 2377
    aget v4, v1, v8

    iput v4, v3, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    .line 2378
    const/4 v4, 0x1

    aget v1, v1, v4

    iput v1, v3, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    .line 2381
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHostContext:Landroid/content/MutableContextWrapper;

    invoke-virtual {v1, v4, v0, v2}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v1

    iput-object v1, v3, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 2383
    iget-object v1, v3, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v1, v0, v2}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 2384
    iget-object v0, v3, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0, v3}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 2386
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 2387
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0b0007

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 2389
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetPreview:Lcom/sec/android/app/twlauncher/WidgetPreview;

    iget-object v5, v3, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    iget v7, v3, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    mul-int/2addr v0, v7

    iget v7, v3, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    mul-int/2addr v1, v7

    invoke-direct {v6, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/twlauncher/WidgetPreview;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2391
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetPreview:Lcom/sec/android/app/twlauncher/WidgetPreview;

    invoke-virtual {v0, v8}, Lcom/sec/android/app/twlauncher/WidgetPreview;->setVisibility(I)V

    .line 2393
    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    .line 2394
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/Launcher;->getWidgetMultipleSize(Landroid/appwidget/AppWidgetProviderInfo;)Lcom/sec/android/app/twlauncher/MultipleSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MultipleSize;->toLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->longMs:J

    goto :goto_0
.end method

.method private processAddToWallpapersMenuSelection(IJ)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 7363
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResolveInfoList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 7364
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResolveInfoList:Ljava/util/List;

    long-to-int v1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 7365
    if-eqz v0, :cond_0

    .line 7366
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7367
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 7369
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 7370
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->deactivateAllScrollMenus()V

    .line 7373
    :cond_0
    return-void
.end method

.method private processAddToWorkspaceMenuSelection(IJ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 7330
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddToWorkspaceMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScrollMenu;->deactivate()V

    .line 7332
    long-to-int v0, p2

    packed-switch v0, :pswitch_data_0

    .line 7360
    :goto_0
    :pswitch_0
    return-void

    .line 7336
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->showShortcutMenu()V

    goto :goto_0

    .line 7341
    :pswitch_2
    const-string v0, "android.permission.BIND_APPWIDGET"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 7345
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->launchAppWidgetPicker()V

    goto :goto_0

    .line 7343
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetDialog:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->activateMenu(Landroid/view/View;Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 7351
    :pswitch_3
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->showFolderMenu()V

    goto :goto_0

    .line 7356
    :pswitch_4
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->showWallpaperMenu()V

    goto :goto_0

    .line 7332
    nop

    :pswitch_data_0
    .packed-switch 0x7f080017
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private processAppShortcutMenuSelection(IJ)V
    .locals 5
    .parameter "position"
    .parameter "id"

    .prologue
    .line 7376
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->updateAddItemCellInfo()V

    .line 7377
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResolveInfoList:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 7378
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResolveInfoList:Ljava/util/List;

    long-to-int v3, p2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 7380
    .local v0, app:Landroid/content/pm/ResolveInfo;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 7381
    .local v1, shortcutIntent:Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 7390
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-boolean v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopLocked:Z

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {p0, p0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/Launcher;->completeAddApplication(Landroid/content/Context;Landroid/content/Intent;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)V

    .line 7392
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->deactivateAllScrollMenus()V

    .line 7394
    .end local v0           #app:Landroid/content/pm/ResolveInfo;
    .end local v1           #shortcutIntent:Landroid/content/Intent;
    :cond_0
    return-void

    .line 7390
    .restart local v0       #app:Landroid/content/pm/ResolveInfo;
    .restart local v1       #shortcutIntent:Landroid/content/Intent;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private processFolderMenuSelection(IJ)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 7398
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_3

    .line 7399
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopLocked:Z

    if-nez v0, :cond_2

    move v0, v2

    :goto_0
    invoke-direct {p0, v3, v0}, Lcom/sec/android/app/twlauncher/Launcher;->addFolder(Ljava/lang/CharSequence;Z)Lcom/sec/android/app/twlauncher/FolderInfo;

    move-result-object v0

    .line 7400
    if-eqz v0, :cond_1

    .line 7406
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ScrollMenu;->getFactor()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 7409
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/twlauncher/ScrollMenu;->activate(Landroid/widget/ListAdapter;)V

    .line 7411
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->showCreateFolderDialog(Lcom/sec/android/app/twlauncher/FolderInfo;)V

    .line 7425
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->deactivateAllScrollMenus()V

    .line 7426
    return-void

    .line 7399
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 7414
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResolveInfoList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 7415
    long-to-int v0, p2

    sub-int/2addr v0, v2

    .line 7417
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResolveInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 7418
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 7419
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 7421
    const-string v0, "android.intent.action.CREATE_LIVE_FOLDER"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7422
    const/4 v0, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/twlauncher/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1
.end method

.method private processShortcutMenuSelection(IJ)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 7429
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_2

    .line 7430
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mShortcutMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScrollMenu;->deactivate()V

    .line 7431
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResolveInfoList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 7432
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResolveInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7433
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResolveInfoList:Ljava/util/List;

    .line 7435
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->showAppShortcutMenu()V

    .line 7454
    :cond_1
    :goto_0
    return-void

    .line 7437
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResolveInfoList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 7440
    const-wide/16 v0, 0x1

    sub-long v0, p2, v0

    long-to-int v0, v0

    .line 7441
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResolveInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 7443
    if-eqz v0, :cond_1

    .line 7445
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 7446
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 7448
    const-string v0, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7449
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/twlauncher/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    .line 7450
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->deactivateAllScrollMenus()V

    goto :goto_0
.end method

.method private static readConfiguration(Landroid/content/Context;Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;)V
    .locals 4
    .parameter "context"
    .parameter "configuration"

    .prologue
    .line 1204
    const/4 v0, 0x0

    .line 1206
    .local v0, in:Ljava/io/DataInputStream;
    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    const-string v2, "launcher.preferences"

    invoke-virtual {p0, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1207
    .end local v0           #in:Ljava/io/DataInputStream;
    .local v1, in:Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 1208
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p1, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;->mcc:I

    .line 1209
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p1, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;->mnc:I

    .line 1211
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p1, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;->themePackageSeq:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 1218
    if-eqz v1, :cond_2

    .line 1220
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .line 1226
    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    :cond_0
    :goto_0
    return-void

    .line 1221
    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 1223
    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_0

    .line 1213
    :catch_1
    move-exception v2

    .line 1218
    :goto_1
    if-eqz v0, :cond_0

    .line 1220
    :try_start_3
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 1221
    :catch_2
    move-exception v2

    goto :goto_0

    .line 1215
    :catch_3
    move-exception v2

    .line 1218
    :goto_2
    if-eqz v0, :cond_0

    .line 1220
    :try_start_4
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    .line 1221
    :catch_4
    move-exception v2

    goto :goto_0

    .line 1218
    :catchall_0
    move-exception v2

    :goto_3
    if-eqz v0, :cond_1

    .line 1220
    :try_start_5
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 1223
    :cond_1
    :goto_4
    throw v2

    .line 1221
    :catch_5
    move-exception v3

    goto :goto_4

    .line 1218
    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_3

    .line 1215
    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :catch_6
    move-exception v2

    move-object v0, v1

    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_2

    .line 1213
    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :catch_7
    move-exception v2

    move-object v0, v1

    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_1

    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :cond_2
    move-object v0, v1

    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_0
.end method

.method private registerContentObservers()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 4088
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 4089
    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v2, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 4090
    sget-object v2, Lcom/sec/android/app/twlauncher/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 4092
    const-string v2, "content://com.sec.badge/apps"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBadgeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 4095
    const-string v2, "maximum_power_saving"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 4096
    .local v0, powerSavingUri:Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 4097
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mPowerSavingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 4098
    :cond_0
    return-void
.end method

.method private registerIntentReceivers()V
    .locals 3

    .prologue
    .line 4030
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 4031
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4032
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4033
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 4034
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mApplicationsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/twlauncher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4035
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 4036
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/twlauncher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4037
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 4038
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4039
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mExternalAppsAvailabilityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/twlauncher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4041
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4042
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4043
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBootCompleteIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/twlauncher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4044
    const-string v0, "sys.boot_completed"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4045
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 4047
    const/4 v0, -0x8

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 4049
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$BootWatcher;

    const-wide/16 v1, 0x2710

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/app/twlauncher/Launcher$BootWatcher;-><init>(Lcom/sec/android/app/twlauncher/Launcher;J)V

    .line 4057
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4058
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4059
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4060
    const-string v1, "android.intent.action.MULTI_CSC_CLEAR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4064
    const-string v1, "android.intent.action.WIDGETS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4065
    const-string v1, "android.intent.action.SHORTCUTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4067
    const-string v1, "android.intent.action.WALLPAPER_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4070
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/twlauncher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4072
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4073
    const-string v1, "android.intent.action.WALLPAPER_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4074
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/twlauncher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4077
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4078
    const-string v1, "android.intent.action.TSTORE_COUNT_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4079
    const-string v1, "android.intent.action.BADGE_COUNT_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4080
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBadgeCountChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/twlauncher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4081
    return-void

    .line 4052
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mGLSurfaceViewGroup:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->unblockDispatchDraw()V

    .line 4053
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBootInProgress:Z

    goto :goto_0
.end method

.method private removeShortcutsForPackage(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 3413
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 3414
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->removeShortcutsForPackage(Ljava/lang/String;)V

    .line 3416
    :cond_0
    return-void
.end method

.method private resetAndRestartLoaders()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1276
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    invoke-virtual {v1, p0, v3}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->start(Landroid/content/Context;Z)V

    .line 1278
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->loadApplications()V

    .line 1279
    sget-object v1, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v1, v2, p0, v3}, Lcom/sec/android/app/twlauncher/LauncherModel;->loadApplications(ZLcom/sec/android/app/twlauncher/Launcher;Z)Z

    move-result v0

    .line 1280
    .local v0, loadApplications:Z
    sget-object v1, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v1, v2, p0, v3, v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->loadUserItems(ZLcom/sec/android/app/twlauncher/Launcher;ZZ)V

    .line 1282
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRestoring:Z

    .line 1283
    return-void
.end method

.method private restoreActiveMenu()V
    .locals 2

    .prologue
    .line 5378
    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mActiveMenuId:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddToWorkspaceMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ScrollMenu;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 5379
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->showAddToWorkspaceMenu(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    .line 5392
    :cond_0
    :goto_0
    return-void

    .line 5380
    :cond_1
    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mActiveMenuId:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetDialog:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 5381
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetDialog:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->activateMenu(Landroid/view/View;Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 5382
    :cond_2
    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mActiveMenuId:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpapersMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ScrollMenu;->getId()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 5383
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->showWallpaperMenu()V

    goto :goto_0

    .line 5384
    :cond_3
    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mActiveMenuId:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mShortcutMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ScrollMenu;->getId()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 5385
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->showShortcutMenu()V

    goto :goto_0

    .line 5386
    :cond_4
    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mActiveMenuId:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ScrollMenu;->getId()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 5387
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->showAppShortcutMenu()V

    goto :goto_0

    .line 5388
    :cond_5
    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mActiveMenuId:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ScrollMenu;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 5389
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->showFolderMenu()V

    goto :goto_0
.end method

.method private restoreState(Landroid/os/Bundle;)V
    .locals 20
    .parameter "savedState"

    .prologue
    .line 1768
    if-nez p1, :cond_1

    .line 1850
    :cond_0
    :goto_0
    return-void

    .line 1772
    :cond_1
    const-string v17, "launcher.delete_application"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    sput-object v17, Lcom/sec/android/app/twlauncher/Launcher;->mUninstallPackageName:Ljava/lang/String;

    .line 1774
    const-string v17, "launcher.current_screen"

    const/16 v18, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 1775
    .local v7, currentScreen:I
    const/16 v17, -0x1

    move v0, v7

    move/from16 v1, v17

    if-le v0, v1, :cond_2

    .line 1776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->setCurrentScreen(I)V

    .line 1779
    :cond_2
    const-string v17, "launcher.menu_mode"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 1781
    .local v11, mmMode:I
    const/16 v17, 0x2

    move v0, v11

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    .line 1782
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move v1, v11

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)Z

    .line 1783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/MenuManager;->restoreEditModeFactor()V

    .line 1784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/MenuManager;->restoreLM()V

    .line 1787
    :cond_3
    const-string v17, "launcher.menu_current_screen"

    const/16 v18, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 1788
    .local v10, mmCurrentScreen:I
    const/16 v17, -0x1

    move v0, v10

    move/from16 v1, v17

    if-le v0, v1, :cond_4

    .line 1789
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move v1, v10

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->setCurrentScreen(I)V

    .line 1792
    :cond_4
    const-string v17, "launcher.add_screen"

    const/16 v18, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 1793
    .local v5, addScreen:I
    const/16 v17, -0x1

    move v0, v5

    move/from16 v1, v17

    if-le v0, v1, :cond_5

    .line 1794
    new-instance v17, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    invoke-direct/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 1795
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-object v4, v0

    .line 1796
    .local v4, addItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object v1, v4

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->valid:Z

    .line 1797
    iput v5, v4, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    .line 1798
    const-string v17, "launcher.add_cellX"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object v1, v4

    iput v0, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    .line 1799
    const-string v17, "launcher.add_cellY"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object v1, v4

    iput v0, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    .line 1800
    const-string v17, "launcher.add_spanX"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object v1, v4

    iput v0, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanX:I

    .line 1801
    const-string v17, "launcher.add_spanY"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object v1, v4

    iput v0, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanY:I

    .line 1802
    const-string v17, "launcher.add_occupied_cells"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v17

    const-string v18, "launcher.add_countX"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v18

    const-string v19, "launcher.add_countY"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v19

    move-object v0, v4

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->findVacantCellsFromOccupied([ZII)V

    .line 1806
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Launcher;->mRestoring:Z

    .line 1809
    .end local v4           #addItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    :cond_5
    const-string v17, "launcher.active_menu_id"

    const/16 v18, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Launcher;->mActiveMenuId:I

    .line 1810
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Launcher;->restoreActiveMenu()V

    .line 1812
    sget-object v17, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/LauncherModel;->getMenuManagerUserFolderModel()Lcom/sec/android/app/twlauncher/UserFolderModel;

    move-result-object v12

    .line 1813
    .local v12, model:Lcom/sec/android/app/twlauncher/UserFolderModel;
    invoke-virtual {v12}, Lcom/sec/android/app/twlauncher/UserFolderModel;->getSpecialFolders()Ljava/util/Hashtable;

    move-result-object v16

    .line 1815
    .local v16, special:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Lcom/sec/android/app/twlauncher/UserFolderInfo;>;"
    const-string v17, "launcher.remove_folder"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 1816
    .local v14, removeFolder:Z
    if-eqz v14, :cond_6

    .line 1817
    const-string v17, "launcher.remove_folder_id"

    invoke-virtual/range {v16 .. v17}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/Launcher;->mFolderToRemove:Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 1820
    :cond_6
    const-string v17, "launcher.rename_folder"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    .line 1821
    .local v15, renameFolder:Z
    if-eqz v15, :cond_7

    .line 1822
    const-string v17, "launcher.rename_folder_owner"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 1823
    .local v13, owner:I
    packed-switch v13, :pswitch_data_0

    .line 1832
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    .line 1833
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/FolderInfo;->setOwner(I)V

    .line 1834
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Launcher;->mRestoring:Z

    .line 1838
    .end local v13           #owner:I
    :cond_7
    const-string v17, "launcher.all_apps_folder"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 1839
    .local v6, allApps:Z
    if-eqz v6, :cond_8

    .line 1840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/MenuManager;->open()V

    .line 1843
    :cond_8
    const-string v17, "launcher.quick_navigation"

    const/16 v18, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    .line 1845
    const-string v17, "launcher.menu_screen_count"

    const/16 v18, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Launcher;->mMenuScreenCount:I

    .line 1847
    const-string v17, "launcher.delete_index"

    const/16 v18, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteIndex:I

    .line 1848
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteIndex:I

    move/from16 v17, v0

    if-ltz v17, :cond_0

    .line 1849
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Launcher;->mIsDeletePopup:Z

    goto/16 :goto_0

    .line 1825
    .end local v6           #allApps:Z
    .restart local v13       #owner:I
    :pswitch_0
    const-string v17, "launcher.rename_folder_id"

    invoke-virtual/range {v16 .. v17}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/twlauncher/FolderInfo;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/Launcher;->mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    goto/16 :goto_1

    .line 1828
    :pswitch_1
    const-string v17, "launcher.rename_folder_id"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 1829
    .local v8, id:J
    sget-object v17, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-wide v2, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/LauncherModel;->getFolderById(Landroid/content/Context;J)Lcom/sec/android/app/twlauncher/FolderInfo;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/Launcher;->mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    goto/16 :goto_1

    .line 1823
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static setScreen(I)V
    .locals 2
    .parameter "screen"

    .prologue
    .line 1262
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1263
    :try_start_0
    sput p0, Lcom/sec/android/app/twlauncher/Launcher;->sScreen:I

    .line 1264
    monitor-exit v0

    .line 1265
    return-void

    .line 1264
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setSomethingsInDefaultIMEI()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    const-string v8, "Unknown"

    const-string v5, "Not Available"

    const-string v7, "Launcher"

    .line 923
    const-string v0, "ro.build.PDA"

    const-string v1, "Not Available"

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 924
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "uartapcpmode"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 925
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "usbapcpmode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 926
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getBatteryLevel()Ljava/lang/String;

    .line 927
    const-string v2, ""

    .line 929
    const/4 v2, 0x1

    sput-boolean v2, Lcom/sec/android/app/twlauncher/Launcher;->mIsDefaultIMEI:Z

    .line 930
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HW : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ril.hw_ver"

    const-string v4, "Not Available"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/twlauncher/Launcher;->mHwVer:Ljava/lang/String;

    .line 932
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PDA : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ro.build.PDA"

    const-string v4, "Not Available"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/twlauncher/Launcher;->mPdaVer:Ljava/lang/String;

    .line 933
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Phone : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ril.sw_ver"

    const-string v4, "Not Available"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/twlauncher/Launcher;->mPhoneVer:Ljava/lang/String;

    .line 934
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CSC : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ril.official_cscver"

    const-string v4, "Unknown"

    invoke-static {v3, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/twlauncher/Launcher;->mCscVer:Ljava/lang/String;

    .line 935
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RF Cal. Date : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ril.rfcal_date"

    const-string v4, "Unknown"

    invoke-static {v3, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/twlauncher/Launcher;->mRfCalDate:Ljava/lang/String;

    .line 937
    const-string v2, "N/A"

    .line 939
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CAMERA : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/twlauncher/Launcher;->mCameraFirmVer:Ljava/lang/String;

    .line 940
    const-string v2, "SMD,PBA : N"

    sput-object v2, Lcom/sec/android/app/twlauncher/Launcher;->mIsSmdPbaTested:Ljava/lang/String;

    .line 942
    const-string v2, "UniqueNumber : N"

    sput-object v2, Lcom/sec/android/app/twlauncher/Launcher;->mUNnumber:Ljava/lang/String;

    .line 945
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->config:Lcom/sec/android/app/twlauncher/appConfig;

    const-string v5, "PATH_TSP_FIRM_VER"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/twlauncher/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 947
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TSP : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/sec/android/app/twlauncher/Launcher;->mTspFirmVer:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 951
    :goto_0
    if-eqz v2, :cond_0

    .line 953
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    move-object v2, v6

    .line 959
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->config:Lcom/sec/android/app/twlauncher/appConfig;

    const-string v4, "MODEL"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/twlauncher/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "I9103"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 961
    :try_start_3
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher;->config:Lcom/sec/android/app/twlauncher/appConfig;

    const-string v6, "PATH_TSK_FIRM_VER"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/twlauncher/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 962
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TSK : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/twlauncher/Launcher;->mTskFirmVer:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-object v2, v3

    .line 966
    :goto_2
    if-eqz v2, :cond_1

    .line 968
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 975
    :cond_1
    :goto_3
    if-nez v0, :cond_4

    const-string v0, "UART : MODEM"

    :goto_4
    sput-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mUART:Ljava/lang/String;

    .line 976
    if-nez v1, :cond_5

    const-string v0, "USB : MODEM"

    :goto_5
    sput-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mUSB:Ljava/lang/String;

    .line 978
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 979
    const-string v1, "com.android.samsungtest.AnswerLauncherDisplay"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 980
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/twlauncher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 981
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.samsungtest.RequestLauncherDisplay"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 982
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    .line 984
    const-string v0, "Launcher"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCscVer : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/twlauncher/Launcher;->mCscVer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mCscVer:Ljava/lang/String;

    const-string v1, "Unknown"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 986
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 987
    new-instance v1, Lcom/sec/android/app/twlauncher/Launcher$Delay_handler;

    invoke-direct {v1, p0}, Lcom/sec/android/app/twlauncher/Launcher$Delay_handler;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 988
    const-string v0, "Launcher"

    const-string v0, "CSC is Unknown. Starting handler"

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    :cond_2
    return-void

    .line 948
    :catch_0
    move-exception v2

    move-object v2, v6

    .line 949
    :goto_6
    const-string v3, "Launcher"

    const-string v3, "Tsp firmver read error"

    invoke-static {v7, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 963
    :catch_1
    move-exception v3

    .line 964
    :goto_7
    const-string v3, "Launcher"

    const-string v3, "Tsk firmver read error"

    invoke-static {v7, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 972
    :cond_3
    const-string v2, "TSK : N/A"

    sput-object v2, Lcom/sec/android/app/twlauncher/Launcher;->mTskFirmVer:Ljava/lang/String;

    goto :goto_3

    .line 975
    :cond_4
    const-string v0, "UART : PDA"

    goto :goto_4

    .line 976
    :cond_5
    const-string v0, "USB : PDA"

    goto :goto_5

    .line 954
    :catch_2
    move-exception v2

    goto/16 :goto_1

    .line 969
    :catch_3
    move-exception v2

    goto/16 :goto_3

    .line 963
    :catch_4
    move-exception v2

    move-object v2, v3

    goto :goto_7

    .line 948
    :catch_5
    move-exception v3

    goto :goto_6
.end method

.method private setWallpaperDimension()V
    .locals 5

    .prologue
    const-string v4, "Launcher"

    .line 1290
    const-string v0, "wallpaper"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    .line 1292
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 1293
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_1

    const/4 v2, 0x1

    .line 1295
    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 1296
    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 1298
    :goto_2
    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v2

    if-nez v2, :cond_4

    .line 1300
    const-string v2, "Launcher"

    const-string v2, "It\'s image wallpaper. suggestDesiredDimensions(-1,-1)"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    const/4 v2, -0x1

    const/4 v4, -0x1

    :try_start_0
    invoke-virtual {v0, v2, v4}, Landroid/app/WallpaperManager;->suggestDesiredDimensions(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1313
    :goto_3
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuWallpaperBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 1314
    mul-int/lit8 v0, v3, 0x2

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuWallpaperBitmap:Landroid/graphics/Bitmap;

    .line 1317
    :cond_0
    return-void

    .line 1293
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1295
    :cond_2
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v3

    goto :goto_1

    .line 1296
    :cond_3
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    goto :goto_2

    .line 1304
    :catch_0
    move-exception v0

    .line 1305
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 1309
    :cond_4
    const-string v2, "Launcher"

    const-string v2, "It\'s live wallpaper. suggestDesiredDimensions() with SPAN 2"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    mul-int/lit8 v2, v3, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/app/WallpaperManager;->suggestDesiredDimensions(II)V

    goto :goto_3
.end method

.method private setupViews()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 1857
    const v0, 0x7f060011

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mGLSurfaceViewGroup:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    .line 1859
    const v0, 0x7f060012

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/DragLayer;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    .line 1860
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    .line 1862
    const v0, 0x7f060014

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/Workspace;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    .line 1863
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    .line 1865
    const v0, 0x7f060015

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuDrawer;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuDrawer:Lcom/sec/android/app/twlauncher/MenuDrawer;

    .line 1866
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuDrawer:Lcom/sec/android/app/twlauncher/MenuDrawer;

    .line 1868
    const v0, 0x7f060022

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/DeleteZone;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteZone:Lcom/sec/android/app/twlauncher/DeleteZone;

    .line 1873
    const v0, 0x7f060018

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    .line 1874
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    .line 1875
    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 1876
    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setDragger(Lcom/sec/android/app/twlauncher/DragController;)V

    .line 1878
    const v0, 0x7f060019

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddToWorkspaceBackground:Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground;

    .line 1881
    const v0, 0x7f060017

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuManager;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    .line 1882
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    .line 1883
    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/MenuManager;->lock()V

    .line 1884
    invoke-virtual {v4, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->setDragger(Lcom/sec/android/app/twlauncher/DragController;)V

    .line 1886
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->loadMenuMode()I

    move-result v0

    const/4 v5, 0x2

    if-ne v0, v5, :cond_0

    .line 1887
    const-string v0, "Launcher"

    const-string v5, "setupViews loadMenuMode() == MenuManager.EDIT_MODE"

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    invoke-virtual {p0, v9}, Lcom/sec/android/app/twlauncher/Launcher;->saveMenuMode(I)V

    .line 1891
    :cond_0
    invoke-virtual {v4, p0}, Lcom/sec/android/app/twlauncher/MenuManager;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 1893
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mPrefs:Landroid/content/SharedPreferences;

    const-string v5, "screencount"

    sget v6, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN_COUNT:I

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    move v6, v9

    .line 1895
    :goto_0
    if-ge v6, v5, :cond_2

    .line 1896
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v7, 0x7f03001b

    invoke-virtual {v0, v7, v2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 1898
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/CellLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 1899
    if-nez v7, :cond_1

    .line 1900
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v7, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1903
    :cond_1
    invoke-virtual {v2, v0, v7}, Lcom/sec/android/app/twlauncher/Workspace;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1895
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 1908
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mPrefs:Landroid/content/SharedPreferences;

    const-string v6, "defaultscreen"

    sget v7, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN_NO:I

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN:I

    .line 1909
    sget v0, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN:I

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v6

    if-lt v0, v6, :cond_3

    .line 1910
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v10

    sput v0, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN:I

    .line 1913
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mPrefs:Landroid/content/SharedPreferences;

    const-string v6, "currentscreen"

    invoke-interface {v0, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1914
    if-eq v0, v8, :cond_4

    if-lt v0, v5, :cond_5

    .line 1916
    :cond_4
    sget v0, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN:I

    .line 1919
    :cond_5
    sput v0, Lcom/sec/android/app/twlauncher/Launcher;->sScreen:I

    .line 1921
    invoke-virtual {v2, v0}, Lcom/sec/android/app/twlauncher/Workspace;->setCurrentScreen(I)V

    .line 1922
    invoke-virtual {v2, p0}, Lcom/sec/android/app/twlauncher/Workspace;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1923
    invoke-virtual {v2, v1}, Lcom/sec/android/app/twlauncher/Workspace;->setDragger(Lcom/sec/android/app/twlauncher/DragController;)V

    .line 1924
    invoke-virtual {v2, p0}, Lcom/sec/android/app/twlauncher/Workspace;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 1927
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v10, :cond_6

    .line 1928
    const/high16 v0, 0x6

    invoke-virtual {v2, v0}, Lcom/sec/android/app/twlauncher/Workspace;->setDescendantFocusability(I)V

    .line 1932
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteZone:Lcom/sec/android/app/twlauncher/DeleteZone;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 1933
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteZone:Lcom/sec/android/app/twlauncher/DeleteZone;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/DeleteZone;->setDragController(Lcom/sec/android/app/twlauncher/DragLayer;)V

    .line 1934
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteZone:Lcom/sec/android/app/twlauncher/DeleteZone;

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/twlauncher/DeleteZone;->setHandle(Lcom/sec/android/app/twlauncher/AppShortcutZone;)V

    .line 1936
    invoke-virtual {v1, v3}, Lcom/sec/android/app/twlauncher/DragLayer;->setIgnoredDropTarget(Landroid/view/View;)V

    .line 1937
    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/DragLayer;->setDragScoller(Lcom/sec/android/app/twlauncher/DragScroller;)V

    .line 1938
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteZone:Lcom/sec/android/app/twlauncher/DeleteZone;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->setDragListener(Lcom/sec/android/app/twlauncher/DragController$DragListener;)V

    .line 1939
    invoke-virtual {v1, v4}, Lcom/sec/android/app/twlauncher/DragLayer;->setDragMenuScoller(Lcom/sec/android/app/twlauncher/DragScroller;)V

    .line 1940
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->setWorkspace(Lcom/sec/android/app/twlauncher/Workspace;)V

    .line 1942
    const v0, 0x7f06002d

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherManager;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mLauncherManager:Lcom/sec/android/app/twlauncher/LauncherManager;

    .line 1943
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mLauncherManager:Lcom/sec/android/app/twlauncher/LauncherManager;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/LauncherManager;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 1945
    const v0, 0x7f06002a

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    .line 1946
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 1949
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    sget v2, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN:I

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setDefaultScreen(I)V

    .line 1951
    const v0, 0x7f06002b

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    .line 1952
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 1955
    const v0, 0x7f060027

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1956
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setSetHomeMenu(Landroid/view/View;)V

    .line 1957
    const v2, 0x7f060028

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1958
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1962
    const v0, 0x7f060029

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/WidgetPreview;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetPreview:Lcom/sec/android/app/twlauncher/WidgetPreview;

    .line 1970
    const v0, 0x7f06001a

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ScrollMenu;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddToWorkspaceMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    .line 1971
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddToWorkspaceMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/ScrollMenu;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 1972
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddToWorkspaceMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/ScrollMenu;->setItemOnClickListener(Lcom/sec/android/app/twlauncher/ScrollMenu$OnItemClickListener;)V

    .line 1974
    const v0, 0x7f060021

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetDialog:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    .line 1975
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetDialog:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 1976
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetDialog:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->setDragger(Lcom/sec/android/app/twlauncher/DragController;)V

    .line 1978
    const v0, 0x7f06001d

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ScrollMenu;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpapersMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    .line 1979
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpapersMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/ScrollMenu;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 1980
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpapersMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/ScrollMenu;->setItemOnClickListener(Lcom/sec/android/app/twlauncher/ScrollMenu$OnItemClickListener;)V

    .line 1982
    const v0, 0x7f06001e

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ScrollMenu;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mShortcutMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    .line 1983
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mShortcutMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/ScrollMenu;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 1984
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mShortcutMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/ScrollMenu;->setItemOnClickListener(Lcom/sec/android/app/twlauncher/ScrollMenu$OnItemClickListener;)V

    .line 1986
    const v0, 0x7f06001f

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ScrollMenu;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    .line 1987
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/ScrollMenu;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 1988
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/ScrollMenu;->setItemOnClickListener(Lcom/sec/android/app/twlauncher/ScrollMenu$OnItemClickListener;)V

    .line 1990
    const v0, 0x7f060020

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ScrollMenu;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    .line 1991
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/ScrollMenu;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 1992
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/ScrollMenu;->setItemOnClickListener(Lcom/sec/android/app/twlauncher/ScrollMenu$OnItemClickListener;)V

    .line 1994
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->getMenuManagerUserFolderModel()Lcom/sec/android/app/twlauncher/UserFolderModel;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->setUserFolderModel(Lcom/sec/android/app/twlauncher/UserFolderModel;)V

    .line 1995
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->loadMenuMode()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)Z

    .line 1996
    return-void
.end method

.method private showAddToWorkspaceMenu(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 5253
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->deactivateAllScrollMenus()V

    .line 5255
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 5257
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddToWorkspaceMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    .line 5260
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddToWorkspaceAdapter:Lcom/sec/android/app/twlauncher/TextIconAdapter;

    if-nez v1, :cond_0

    .line 5261
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 5263
    new-instance v2, Lcom/sec/android/app/twlauncher/TextIconAdapter;

    const v3, 0x7f030017

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/twlauncher/TextIconAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddToWorkspaceAdapter:Lcom/sec/android/app/twlauncher/TextIconAdapter;

    .line 5266
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddToWorkspaceAdapter:Lcom/sec/android/app/twlauncher/TextIconAdapter;

    new-instance v3, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;

    const v4, 0x7f08001c

    const v5, 0x7f020052

    invoke-direct {v3, v1, v4, v5, v6}, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;-><init>(Landroid/content/res/Resources;IIZ)V

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/TextIconAdapter;->addItem(Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;)V

    .line 5273
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddToWorkspaceAdapter:Lcom/sec/android/app/twlauncher/TextIconAdapter;

    new-instance v3, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;

    const v4, 0x7f080017

    const v5, 0x7f020059

    invoke-direct {v3, v1, v4, v5, v6}, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;-><init>(Landroid/content/res/Resources;IIZ)V

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/TextIconAdapter;->addItem(Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;)V

    .line 5277
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddToWorkspaceAdapter:Lcom/sec/android/app/twlauncher/TextIconAdapter;

    new-instance v3, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;

    const v4, 0x7f08001b

    const v5, 0x7f020050

    invoke-direct {v3, v1, v4, v5, v6}, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;-><init>(Landroid/content/res/Resources;IIZ)V

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/TextIconAdapter;->addItem(Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;)V

    .line 5279
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddToWorkspaceAdapter:Lcom/sec/android/app/twlauncher/TextIconAdapter;

    new-instance v3, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;

    const v4, 0x7f08001d

    const v5, 0x7f02005a

    invoke-direct {v3, v1, v4, v5, v6}, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;-><init>(Landroid/content/res/Resources;IIZ)V

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/TextIconAdapter;->addItem(Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;)V

    .line 5282
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddToWorkspaceAdapter:Lcom/sec/android/app/twlauncher/TextIconAdapter;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->activateMenu(Landroid/view/View;Landroid/widget/ListAdapter;)V

    .line 5283
    return-void
.end method

.method private showAppShortcutMenu()V
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 5286
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    .line 5287
    new-instance v2, Lcom/sec/android/app/twlauncher/TextIconAdapter;

    const v0, 0x7f030017

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/twlauncher/TextIconAdapter;-><init>(Landroid/content/Context;I)V

    .line 5290
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5291
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 5293
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 5294
    invoke-virtual {v3, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResolveInfoList:Ljava/util/List;

    .line 5295
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResolveInfoList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 5297
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResolveInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 5298
    new-instance v6, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v0, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, v3}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sec/android/app/twlauncher/Utilities;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v9, 0x1

    invoke-direct {v6, v5, v8, v0, v9}, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;-><init>(ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Z)V

    invoke-virtual {v2, v6}, Lcom/sec/android/app/twlauncher/TextIconAdapter;->addItem(Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;)V

    move v5, v7

    goto :goto_0

    .line 5302
    :cond_0
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/TextIconAdapter;->sort()V

    .line 5303
    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/twlauncher/Launcher;->activateMenu(Landroid/view/View;Landroid/widget/ListAdapter;)V

    .line 5304
    return-void
.end method

.method private showFolderMenu()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 5307
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    .line 5308
    new-instance v2, Lcom/sec/android/app/twlauncher/TextIconAdapter;

    const v0, 0x7f030017

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/twlauncher/TextIconAdapter;-><init>(Landroid/content/Context;I)V

    .line 5311
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.CREATE_LIVE_FOLDER"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5313
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 5314
    invoke-virtual {v3, v0, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResolveInfoList:Ljava/util/List;

    .line 5315
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResolveInfoList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 5317
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResolveInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v10

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 5318
    new-instance v6, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v0, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, v3}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sec/android/app/twlauncher/Utilities;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {v6, v5, v8, v0, v10}, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;-><init>(ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Z)V

    invoke-virtual {v2, v6}, Lcom/sec/android/app/twlauncher/TextIconAdapter;->addItem(Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;)V

    move v5, v7

    goto :goto_0

    .line 5322
    :cond_0
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/TextIconAdapter;->sort()V

    .line 5324
    new-instance v0, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;

    const v3, 0x7f08001a

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020053

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v0, v9, v3, v4, v10}, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;-><init>(ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Z)V

    invoke-virtual {v2, v0, v9}, Lcom/sec/android/app/twlauncher/TextIconAdapter;->insertItem(Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;I)V

    .line 5327
    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/twlauncher/Launcher;->activateMenu(Landroid/view/View;Landroid/widget/ListAdapter;)V

    .line 5328
    return-void
.end method

.method private showNotifications()V
    .locals 2

    .prologue
    .line 4023
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 4024
    .local v0, statusBar:Landroid/app/StatusBarManager;
    if-eqz v0, :cond_0

    .line 4025
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->expand()V

    .line 4027
    :cond_0
    return-void
.end method

.method private showShortcutMenu()V
    .locals 11

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 5331
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher;->mShortcutMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    .line 5332
    new-instance v7, Lcom/sec/android/app/twlauncher/TextIconAdapter;

    const v0, 0x7f030017

    invoke-direct {v7, p0, v0}, Lcom/sec/android/app/twlauncher/TextIconAdapter;-><init>(Landroid/content/Context;I)V

    .line 5335
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5337
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 5338
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResolveInfoList:Ljava/util/List;

    .line 5339
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResolveInfoList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 5341
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResolveInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v5

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 5342
    new-instance v8, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sec/android/app/twlauncher/Utilities;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {v8, v4, v10, v0, v5}, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;-><init>(ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Z)V

    invoke-virtual {v7, v8}, Lcom/sec/android/app/twlauncher/TextIconAdapter;->addItem(Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;)V

    move v4, v9

    goto :goto_0

    .line 5346
    :cond_0
    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/TextIconAdapter;->sort()V

    .line 5347
    new-instance v0, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f080016

    const v4, 0x7f020051

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;-><init>(Landroid/content/res/Resources;IIIZ)V

    invoke-virtual {v7, v0, v2}, Lcom/sec/android/app/twlauncher/TextIconAdapter;->insertItem(Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;I)V

    .line 5349
    invoke-direct {p0, v6, v7}, Lcom/sec/android/app/twlauncher/Launcher;->activateMenu(Landroid/view/View;Landroid/widget/ListAdapter;)V

    .line 5350
    return-void
.end method

.method private showWallpaperMenu()V
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 5354
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->deactivateAllScrollMenus()V

    .line 5356
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpapersMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    .line 5358
    new-instance v2, Lcom/sec/android/app/twlauncher/TextIconAdapter;

    const v0, 0x7f030017

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/twlauncher/TextIconAdapter;-><init>(Landroid/content/Context;I)V

    .line 5361
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5363
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 5364
    invoke-virtual {v3, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResolveInfoList:Ljava/util/List;

    .line 5365
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResolveInfoList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 5367
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResolveInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 5368
    new-instance v6, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v0, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, v3}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sec/android/app/twlauncher/Utilities;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v9, 0x1

    invoke-direct {v6, v5, v8, v0, v9}, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;-><init>(ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Z)V

    invoke-virtual {v2, v6}, Lcom/sec/android/app/twlauncher/TextIconAdapter;->addItem(Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;)V

    move v5, v7

    goto :goto_0

    .line 5372
    :cond_0
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/TextIconAdapter;->sort()V

    .line 5373
    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/twlauncher/Launcher;->activateMenu(Landroid/view/View;Landroid/widget/ListAdapter;)V

    .line 5374
    return-void
.end method

.method private startLoaders()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1268
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->loadApplications()V

    .line 1269
    sget-object v1, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mLocaleChanged:Z

    invoke-virtual {v1, v3, p0, v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->loadApplications(ZLcom/sec/android/app/twlauncher/Launcher;Z)Z

    move-result v0

    .line 1270
    .local v0, loadApplications:Z
    sget-object v1, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mLocaleChanged:Z

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    iget-boolean v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mLocaleChanged:Z

    invoke-virtual {v1, v2, p0, v3, v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->loadUserItems(ZLcom/sec/android/app/twlauncher/Launcher;ZZ)V

    .line 1272
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRestoring:Z

    .line 1273
    return-void

    :cond_0
    move v2, v4

    .line 1270
    goto :goto_0
.end method

.method private toggleVibrateMode()V
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1716
    .line 1717
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1719
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 1721
    if-ne v1, v2, :cond_1

    .line 1722
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v1

    .line 1724
    packed-switch v1, :pswitch_data_0

    .line 1749
    :goto_0
    return-void

    :pswitch_0
    move v1, v4

    .line 1745
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "driving_mode_on"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1748
    :goto_2
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 1730
    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "vibrate_in_silent"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    move v1, v3

    .line 1731
    goto :goto_1

    :cond_0
    move v1, v4

    .line 1735
    goto :goto_1

    :pswitch_2
    move v1, v3

    .line 1739
    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_2

    .line 1724
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private triggerModelAdd(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 5972
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    if-eqz v1, :cond_0

    .line 5973
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    invoke-virtual {v1, p0, p1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->addPackage(Landroid/content/Context;Ljava/lang/String;)V

    .line 5976
    :cond_0
    sget-object v1, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/sec/android/app/twlauncher/LauncherModel;->getPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;

    move-result-object v0

    .line 5978
    .local v0, packageInfo:Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;
    sget-object v1, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v1, p0, v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->addPackageBackground(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)V

    .line 5980
    new-instance v1, Lcom/sec/android/app/twlauncher/Launcher$9;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/twlauncher/Launcher$9;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 5990
    return-void
.end method

.method private triggerModelUpdate(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 6043
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    if-eqz v1, :cond_0

    .line 6044
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    invoke-virtual {v1, p0, p1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->updatePackage(Landroid/content/Context;Ljava/lang/String;)V

    .line 6047
    :cond_0
    sget-object v1, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/sec/android/app/twlauncher/LauncherModel;->getPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;

    move-result-object v0

    .line 6049
    .local v0, packageInfo:Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;
    sget-object v1, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v1, p0, v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->updatePackageBackground(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)V

    .line 6051
    new-instance v1, Lcom/sec/android/app/twlauncher/Launcher$10;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/twlauncher/Launcher$10;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 6057
    return-void
.end method

.method private uninstallPackage()Z
    .locals 7

    .prologue
    const-string v6, "Launcher"

    .line 6343
    const-string v3, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uninstallPackage(). package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/twlauncher/Launcher;->mUninstallPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6344
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/MenuManager;->lock()V

    .line 6346
    const/4 v2, 0x0

    .line 6347
    .local v2, requestSucceded:Z
    new-instance v1, Lcom/sec/android/app/twlauncher/Launcher$PackageDeleteObserver;

    invoke-direct {v1, p0}, Lcom/sec/android/app/twlauncher/Launcher$PackageDeleteObserver;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 6348
    .local v1, observer:Lcom/sec/android/app/twlauncher/Launcher$PackageDeleteObserver;
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppUnistallList:Ljava/util/HashMap;

    sget-object v4, Lcom/sec/android/app/twlauncher/Launcher;->mUninstallPackageName:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6350
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/twlauncher/Launcher;->mUninstallPackageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v1, v5}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6351
    const/4 v2, 0x1

    .line 6356
    :goto_0
    const/4 v3, 0x0

    sput-object v3, Lcom/sec/android/app/twlauncher/Launcher;->mUninstallPackageName:Ljava/lang/String;

    .line 6357
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/DragLayer;->invalidate()V

    .line 6358
    return v2

    .line 6352
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 6353
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uninstallPackage() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6354
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/MenuManager;->unlock()V

    goto :goto_0
.end method

.method private updateAddItemCellInfo()V
    .locals 2

    .prologue
    .line 2134
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-nez v0, :cond_0

    .line 2135
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->findAllVacantCellsFromModel()Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 2138
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 2139
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->findAllVacantCellsFromModel()Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 2140
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-eqz v0, :cond_1

    .line 2141
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v1

    iput v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    .line 2144
    :cond_1
    return-void
.end method

.method private updateShortcutsForPackage(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 3419
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 3420
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->updateShortcutsForPackage(Ljava/lang/String;)V

    .line 3422
    :cond_0
    return-void
.end method

.method private static writeConfiguration(Landroid/content/Context;Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;)V
    .locals 5
    .parameter "context"
    .parameter "configuration"

    .prologue
    const-string v3, "launcher.preferences"

    .line 1229
    const/4 v1, 0x0

    .line 1231
    .local v1, out:Ljava/io/DataOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/DataOutputStream;

    const-string v3, "launcher.preferences"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1232
    .end local v1           #out:Ljava/io/DataOutputStream;
    .local v2, out:Ljava/io/DataOutputStream;
    :try_start_1
    iget-object v3, p1, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1233
    iget v3, p1, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;->mcc:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1234
    iget v3, p1, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;->mnc:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1236
    iget v3, p1, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;->themePackageSeq:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1238
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 1245
    if-eqz v2, :cond_2

    .line 1247
    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 1253
    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 1248
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catch_0
    move-exception v3

    move-object v1, v2

    .line 1250
    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_0

    .line 1239
    :catch_1
    move-exception v3

    .line 1245
    :goto_1
    if-eqz v1, :cond_0

    .line 1247
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 1248
    :catch_2
    move-exception v3

    goto :goto_0

    .line 1241
    :catch_3
    move-exception v3

    move-object v0, v3

    .line 1243
    .local v0, e:Ljava/io/IOException;
    :goto_2
    :try_start_4
    const-string v3, "launcher.preferences"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1245
    if-eqz v1, :cond_0

    .line 1247
    :try_start_5
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 1248
    :catch_4
    move-exception v3

    goto :goto_0

    .line 1245
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_3
    if-eqz v1, :cond_1

    .line 1247
    :try_start_6
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 1250
    :cond_1
    :goto_4
    throw v3

    .line 1248
    :catch_5
    move-exception v4

    goto :goto_4

    .line 1245
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_3

    .line 1241
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catch_6
    move-exception v3

    move-object v0, v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_2

    .line 1239
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catch_7
    move-exception v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_1

    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :cond_2
    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_0
.end method


# virtual methods
.method addAppWidget(Landroid/content/Intent;)V
    .locals 9
    .parameter

    .prologue
    const/4 v7, 0x5

    const/4 v6, -0x1

    const-string v8, "appWidgetId"

    .line 3546
    const-string v0, "appWidgetId"

    invoke-virtual {p1, v8, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 3548
    const-string v0, "custom_widget"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3550
    if-eqz v2, :cond_1

    .line 3551
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->getWidgetItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 3553
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    .line 3554
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mClassName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3561
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 3562
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->addSamsungWidget(Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;)V

    .line 3589
    :goto_0
    return-void

    .line 3570
    :cond_1
    const-string v0, "search_widget"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3572
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 3574
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->addSearch()V

    goto :goto_0

    .line 3576
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 3578
    iget-object v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v2, :cond_3

    .line 3580
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.appwidget.action.APPWIDGET_CONFIGURE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3581
    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3582
    const-string v0, "appWidgetId"

    invoke-virtual {v2, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3583
    invoke-virtual {p0, v2, v7}, Lcom/sec/android/app/twlauncher/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 3586
    :cond_3
    invoke-virtual {p0, v7, v6, p1}, Lcom/sec/android/app/twlauncher/Launcher;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public addNewDroppedAppWidget(Lcom/sec/android/app/twlauncher/AddWidgetItemInfo;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const-string v3, "Launcher"

    .line 2176
    iput-object p2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 2178
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v0

    .line 2180
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/AddWidgetItemInfo;->getProviderInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1, v0, v2}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2188
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2191
    const-string v2, "appWidgetId"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2192
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->addAppWidget(Landroid/content/Intent;)V

    .line 2193
    :goto_0
    return-void

    .line 2181
    :catch_0
    move-exception v0

    .line 2182
    const-string v1, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caught SecurityException while trying to bind app widget: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2183
    const-string v0, "Launcher"

    const-string v0, "Launching picker instead of adding widget."

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2184
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->launchAppWidgetPicker()V

    goto :goto_0
.end method

.method addNewDroppedSamsungWidget(Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x3

    const v2, 0x7f08004a

    const/4 v10, 0x1

    const/4 v7, 0x0

    const-string v3, "Launcher"

    .line 3666
    iput-object p2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 3668
    if-nez p2, :cond_2

    .line 3669
    const-string v0, "Launcher"

    const-string v0, "addNewDroppedSamsungWidget() : cellInfo is a null"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3670
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    .line 3671
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_1

    .line 3672
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    .line 3677
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3730
    :cond_0
    :goto_1
    return-void

    .line 3675
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3682
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v0

    .line 3683
    if-nez v0, :cond_4

    .line 3684
    const-string v0, "Launcher"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addSamsungWidget() : CellLayout is a null("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3685
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    .line 3686
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_3

    .line 3687
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    .line 3692
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 3690
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 3696
    :cond_4
    iget-object v1, p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->mItem:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    iget v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResOrientation:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->getWidth(I)I

    move-result v1

    iget-object v2, p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->mItem:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    iget v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResOrientation:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->getHeight(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/CellLayout;->rectToCell2(II)[I

    move-result-object v8

    .line 3699
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCellCoordinates:[I

    .line 3701
    aget v0, v8, v7

    iput v0, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    .line 3702
    aget v0, v8, v10

    iput v0, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    .line 3704
    aget v0, v8, v7

    aget v1, v8, v10

    invoke-direct {p0, p2, v9, v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->findSlot(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;[III)Z

    move-result v0

    if-nez v0, :cond_6

    .line 3705
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    .line 3706
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSpans:[I

    aget v1, v8, v7

    aput v1, v0, v7

    .line 3707
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSpans:[I

    aget v1, v8, v10

    aput v1, v0, v10

    .line 3709
    iput v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetType:I

    .line 3710
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->isAllPageSlot(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3711
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    goto/16 :goto_1

    .line 3713
    :cond_5
    invoke-direct {p0, v4}, Lcom/sec/android/app/twlauncher/Launcher;->prepareWidgetPreview(I)V

    goto/16 :goto_1

    .line 3717
    :cond_6
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/LauncherModel;->addDesktopSamsungAppWidget(Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V

    .line 3718
    const-wide/16 v2, -0x64

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v4

    aget v5, v9, v7

    aget v6, v9, v10

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIIIZ)V

    .line 3721
    iget-object v1, p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetView:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;

    .line 3722
    invoke-virtual {v1, p1}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->setTag(Ljava/lang/Object;)V

    .line 3724
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    aget v2, v9, v7

    aget v3, v9, v10

    aget v4, v8, v7

    aget v5, v8, v10

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/Workspace;->addInCurrentScreen(Landroid/view/View;IIII)V

    .line 3727
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsActive:Z

    if-eqz v0, :cond_0

    .line 3728
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->resumeWidget(Landroid/app/ActivityGroup;Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V

    goto/16 :goto_1
.end method

.method addSamsungWidget(Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;I)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x1

    const/4 v7, 0x0

    .line 6698
    if-nez p1, :cond_1

    .line 6699
    const-string v0, "Launcher"

    const-string v1, "addSamsungWidget(..) : SamsungWidget is a null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6700
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    .line 6719
    :cond_0
    :goto_0
    return-void

    .line 6704
    :cond_1
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCellCoordinates:[I

    .line 6705
    iget v9, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    .line 6706
    iget v10, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    .line 6708
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/LauncherModel;->addDesktopSamsungAppWidget(Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V

    .line 6709
    const-wide/16 v2, -0x64

    aget v5, v8, v7

    aget v6, v8, v11

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIIIZ)V

    .line 6712
    iget-object v1, p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetView:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;

    .line 6713
    invoke-virtual {v1, p1}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->setTag(Ljava/lang/Object;)V

    .line 6715
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    aget v3, v8, v7

    aget v4, v8, v11

    move v2, p2

    move v5, v9

    move v6, v10

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/Workspace;->addInScreen(Landroid/view/View;IIIII)V

    .line 6716
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 6717
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/twlauncher/Workspace;->resumeScreen(I)V

    goto :goto_0
.end method

.method addSamsungWidget(Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;)V
    .locals 11
    .parameter

    .prologue
    const/4 v6, 0x3

    const v4, 0x7f08004a

    const/4 v10, 0x1

    const/4 v7, 0x0

    const-string v5, "Launcher"

    .line 3734
    if-nez p1, :cond_1

    .line 3809
    :cond_0
    :goto_0
    return-void

    .line 3736
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->createWidget(Landroid/content/Context;Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;)Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    move-result-object v1

    .line 3738
    if-nez v1, :cond_2

    .line 3739
    const-string v0, "Launcher"

    const-string v0, "addSamsungWidget() : SamsungWidget is a null"

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3743
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->updateAddItemCellInfo()V

    .line 3745
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 3747
    if-nez v0, :cond_4

    .line 3748
    const-string v0, "Launcher"

    const-string v0, "addSamsungWidget() : cellInfo is a null"

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3749
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    .line 3750
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_3

    .line 3751
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    .line 3756
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 3754
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 3760
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget v3, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v2

    .line 3761
    if-nez v2, :cond_6

    .line 3762
    const-string v1, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addSamsungWidget() : CellLayout is a null("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3763
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    .line 3764
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_5

    .line 3765
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    .line 3770
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 3768
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 3774
    :cond_6
    iget v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResOrientation:I

    invoke-virtual {p1, v3}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->getWidth(I)I

    move-result v3

    iget v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResOrientation:I

    invoke-virtual {p1, v4}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->getHeight(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/twlauncher/CellLayout;->rectToCell2(II)[I

    move-result-object v8

    .line 3777
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCellCoordinates:[I

    .line 3779
    aget v2, v8, v7

    iput v2, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    .line 3780
    aget v2, v8, v10

    iput v2, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    .line 3782
    aget v2, v8, v7

    aget v3, v8, v10

    invoke-direct {p0, v0, v9, v2, v3}, Lcom/sec/android/app/twlauncher/Launcher;->findSlot(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;[III)Z

    move-result v0

    if-nez v0, :cond_8

    .line 3783
    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    .line 3784
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSpans:[I

    aget v1, v8, v7

    aput v1, v0, v7

    .line 3785
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSpans:[I

    aget v1, v8, v10

    aput v1, v0, v10

    .line 3787
    iput v6, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetType:I

    .line 3788
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->isAllPageSlot(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3789
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    goto/16 :goto_0

    .line 3791
    :cond_7
    invoke-direct {p0, v6}, Lcom/sec/android/app/twlauncher/Launcher;->prepareWidgetPreview(I)V

    goto/16 :goto_0

    .line 3796
    :cond_8
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->addDesktopSamsungAppWidget(Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V

    .line 3797
    const-wide/16 v2, -0x64

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v4

    aget v5, v9, v7

    aget v6, v9, v10

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIIIZ)V

    .line 3800
    iget-object v3, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetView:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;

    .line 3801
    invoke-virtual {v3, v1}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->setTag(Ljava/lang/Object;)V

    .line 3803
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    aget v4, v9, v7

    aget v5, v9, v10

    aget v6, v8, v7

    aget v7, v8, v10

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/app/twlauncher/Workspace;->addInCurrentScreen(Landroid/view/View;IIII)V

    .line 3806
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsActive:Z

    if-eqz v0, :cond_0

    .line 3807
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    invoke-virtual {v0, p0, v1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->resumeWidget(Landroid/app/ActivityGroup;Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V

    goto/16 :goto_0
.end method

.method addSearch()V
    .locals 12

    .prologue
    const/4 v7, 0x0

    const/4 v11, 0x1

    .line 3592
    invoke-static {}, Lcom/sec/android/app/twlauncher/Widget;->makeSearch()Lcom/sec/android/app/twlauncher/Widget;

    move-result-object v1

    .line 3593
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 3595
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCellCoordinates:[I

    .line 3596
    iget v9, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    .line 3597
    iget v10, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    .line 3599
    invoke-direct {p0, v0, v8, v9, v10}, Lcom/sec/android/app/twlauncher/Launcher;->findSlot(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;[III)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3600
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSpans:[I

    aput v9, v0, v7

    .line 3601
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSpans:[I

    aput v10, v0, v11

    .line 3602
    iput v11, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetType:I

    .line 3603
    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidget:Lcom/sec/android/app/twlauncher/Widget;

    .line 3604
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->isAllPageSlot(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3605
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    .line 3622
    :goto_0
    return-void

    .line 3607
    :cond_0
    invoke-direct {p0, v11}, Lcom/sec/android/app/twlauncher/Launcher;->prepareWidgetPreview(I)V

    goto :goto_0

    .line 3612
    :cond_1
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->addDesktopItem(Lcom/sec/android/app/twlauncher/ItemInfo;)V

    .line 3613
    const-wide/16 v2, -0x64

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v4

    aget v5, v8, v7

    aget v6, v8, v11

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIIIZ)V

    .line 3616
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mInflater:Landroid/view/LayoutInflater;

    iget v2, v1, Lcom/sec/android/app/twlauncher/Widget;->layoutResource:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 3617
    invoke-virtual {v4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3618
    const v0, 0x7f06004e

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/Search;

    .line 3619
    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/Search;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 3621
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    aget v2, v8, v7

    aget v3, v8, v11

    move-object v1, v4

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/Workspace;->addInCurrentScreen(Landroid/view/View;IIII)V

    goto :goto_0
.end method

.method addSearch(Lcom/sec/android/app/twlauncher/Widget;)V
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 3644
    if-nez p1, :cond_0

    .line 3658
    :goto_0
    return-void

    .line 3646
    :cond_0
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCellCoordinates:[I

    .line 3648
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/LauncherModel;->addDesktopItem(Lcom/sec/android/app/twlauncher/ItemInfo;)V

    .line 3649
    const-wide/16 v2, -0x64

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v4

    aget v5, v8, v7

    aget v6, v8, v9

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIIIZ)V

    .line 3652
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p1, Lcom/sec/android/app/twlauncher/Widget;->layoutResource:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 3653
    invoke-virtual {v1, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3654
    const v0, 0x7f06004e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/Search;

    .line 3655
    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/Search;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 3657
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    aget v2, v8, v7

    aget v3, v8, v9

    iget v4, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    iget v5, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/Workspace;->addInCurrentScreen(Landroid/view/View;IIII)V

    goto :goto_0
.end method

.method cancelAddWidget()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 6870
    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetType:I

    .line 6871
    .local v0, type:I
    if-ne v0, v5, :cond_1

    .line 6872
    iput-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidget:Lcom/sec/android/app/twlauncher/Widget;

    .line 6887
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetPreview:Lcom/sec/android/app/twlauncher/WidgetPreview;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/WidgetPreview;->removeAllViews()V

    .line 6888
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetPreview:Lcom/sec/android/app/twlauncher/WidgetPreview;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/WidgetPreview;->setVisibility(I)V

    .line 6890
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->stopAutoScrollRunnable()V

    .line 6892
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->clearAddWidget()V

    .line 6893
    return-void

    .line 6873
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 6874
    iget v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetId:I

    if-eq v1, v3, :cond_2

    .line 6875
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    iget v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetId:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 6876
    :cond_2
    iput v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetId:I

    .line 6877
    iput-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 6878
    iput-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    goto :goto_0

    .line 6879
    :cond_3
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 6880
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    if-eqz v1, :cond_4

    .line 6881
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    iget-wide v2, v2, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Landroid/app/LocalActivityManager;->destroyActivity(Ljava/lang/String;Z)Landroid/view/Window;

    .line 6884
    :cond_4
    iput-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    goto :goto_0
.end method

.method cancelRemovePage()V
    .locals 1

    .prologue
    .line 6321
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsDeletePopup:Z

    .line 6322
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->cancelDeleteView()V

    .line 6324
    return-void
.end method

.method checkWidgetSpace(I)Z
    .locals 9
    .parameter "screen"

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 6823
    iget v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetType:I

    .line 6824
    .local v3, type:I
    if-eq v3, v8, :cond_0

    const/4 v5, 0x2

    if-eq v3, v5, :cond_0

    const/4 v5, 0x3

    if-ne v3, v5, :cond_2

    .line 6827
    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v5, p1}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v1

    .line 6828
    .local v1, layout:Lcom/sec/android/app/twlauncher/CellLayout;
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSpans:[I

    .line 6830
    .local v2, spans:[I
    invoke-virtual {v1, v6, v6}, Lcom/sec/android/app/twlauncher/CellLayout;->findAllVacantCells([ZLandroid/view/View;)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v0

    .line 6833
    .local v0, cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCellCoordinates:[I

    .line 6834
    .local v4, xy:[I
    if-eqz v0, :cond_1

    aget v5, v2, v7

    aget v6, v2, v8

    invoke-direct {p0, v0, v4, v5, v6}, Lcom/sec/android/app/twlauncher/Launcher;->findSlot(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;[III)Z

    move-result v5

    if-nez v5, :cond_1

    move v5, v7

    .line 6842
    .end local v0           #cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    .end local v1           #layout:Lcom/sec/android/app/twlauncher/CellLayout;
    .end local v2           #spans:[I
    .end local v4           #xy:[I
    :goto_0
    return v5

    .line 6838
    .restart local v0       #cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    .restart local v1       #layout:Lcom/sec/android/app/twlauncher/CellLayout;
    .restart local v2       #spans:[I
    .restart local v4       #xy:[I
    :cond_1
    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/Launcher;->showWidgetMessage(Z)V

    move v5, v8

    .line 6839
    goto :goto_0

    .end local v0           #cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    .end local v1           #layout:Lcom/sec/android/app/twlauncher/CellLayout;
    .end local v2           #spans:[I
    .end local v4           #xy:[I
    :cond_2
    move v5, v7

    .line 6842
    goto :goto_0
.end method

.method clearAddWidget()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 6896
    iput v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetType:I

    .line 6898
    iput v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetId:I

    .line 6899
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    aput v2, v0, v1

    .line 6900
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 6902
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->unlock()V

    .line 6903
    return-void
.end method

.method closeAllApplications()V
    .locals 1

    .prologue
    .line 4902
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->close()V

    .line 4903
    return-void
.end method

.method closeQuickViewMainMenu()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4987
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->isOpened()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5003
    :goto_0
    return-void

    .line 4990
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 4991
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->close()V

    .line 4993
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getCurrentPage()I

    move-result v0

    .line 4994
    .local v0, newMenuPage:I
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_3

    .line 4995
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getCurrentScreenIndex()I

    move-result v0

    .line 5001
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->setVisibility(I)V

    .line 5002
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setVisibility(I)V

    goto :goto_0

    .line 4996
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getCurrentScreenIndex()I

    move-result v1

    if-eq v1, v0, :cond_2

    .line 4997
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->setCurrentScreen(I)V

    goto :goto_1
.end method

.method closeQuickViewWorkspace()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 4932
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4957
    :goto_0
    return-void

    .line 4935
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 4936
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->close()V

    .line 4938
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getCurrentPage()I

    move-result v1

    .line 4939
    .local v1, newWorkspace:I
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v2

    if-lt v1, v2, :cond_3

    .line 4940
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v1

    .line 4945
    :cond_2
    :goto_1
    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Launcher;->setScreen(I)V

    .line 4947
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/twlauncher/Workspace;->setVisibility(I)V

    .line 4948
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setVisibility(I)V

    .line 4949
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 4951
    move v0, v1

    .line 4952
    .local v0, newScreen:I
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/sec/android/app/twlauncher/Launcher$8;

    invoke-direct {v3, p0, v0}, Lcom/sec/android/app/twlauncher/Launcher$8;-><init>(Lcom/sec/android/app/twlauncher/Launcher;I)V

    const-wide/16 v4, 0x15e

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 4941
    .end local v0           #newScreen:I
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v2

    if-eq v2, v1, :cond_2

    .line 4942
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/twlauncher/Workspace;->setCurrentScreen(I)V

    .line 4943
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->updateWallpaperOffset()V

    goto :goto_1
.end method

.method closeSystemDialogs()V
    .locals 1

    .prologue
    .line 2477
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->closeAllPanels()V

    .line 2484
    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->dismissDialog(I)V

    .line 2486
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->unlock()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_c

    .line 2493
    :goto_0
    const/4 v0, 0x7

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->dismissDialog(I)V

    .line 2495
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->unlock()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b

    .line 2502
    :goto_1
    const/4 v0, 0x0

    :try_start_2
    sput-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mUninstallPackageName:Ljava/lang/String;

    .line 2503
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->dismissDialog(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_a

    .line 2510
    :goto_2
    const/4 v0, 0x4

    :try_start_3
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->dismissDialog(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 2517
    :goto_3
    const/4 v0, 0x5

    :try_start_4
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->dismissDialog(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 2524
    :goto_4
    const/4 v0, 0x6

    :try_start_5
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->dismissDialog(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 2531
    :goto_5
    const/16 v0, 0x8

    :try_start_6
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->dismissDialog(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 2537
    :goto_6
    const/16 v0, 0x9

    :try_start_7
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->dismissDialog(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 2543
    :goto_7
    const/16 v0, 0xa

    :try_start_8
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->dismissDialog(I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 2549
    :goto_8
    const/16 v0, 0xb

    :try_start_9
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->dismissDialog(I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 2557
    :goto_9
    const/16 v0, 0xd

    :try_start_a
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->dismissDialog(I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 2563
    :goto_a
    const/16 v0, 0xe

    :try_start_b
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->dismissDialog(I)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    .line 2569
    :goto_b
    const/16 v0, 0xf

    :try_start_c
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->dismissDialog(I)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9

    .line 2574
    :goto_c
    return-void

    .line 2511
    :catch_0
    move-exception v0

    goto :goto_3

    .line 2518
    :catch_1
    move-exception v0

    goto :goto_4

    .line 2525
    :catch_2
    move-exception v0

    goto :goto_5

    .line 2532
    :catch_3
    move-exception v0

    goto :goto_6

    .line 2538
    :catch_4
    move-exception v0

    goto :goto_7

    .line 2544
    :catch_5
    move-exception v0

    goto :goto_8

    .line 2550
    :catch_6
    move-exception v0

    goto :goto_9

    .line 2558
    :catch_7
    move-exception v0

    goto :goto_a

    .line 2564
    :catch_8
    move-exception v0

    goto :goto_b

    .line 2570
    :catch_9
    move-exception v0

    goto :goto_c

    .line 2504
    :catch_a
    move-exception v0

    goto :goto_2

    .line 2496
    :catch_b
    move-exception v0

    goto :goto_1

    .line 2487
    :catch_c
    move-exception v0

    goto :goto_0
.end method

.method completeAddApplication(Landroid/content/Context;Landroid/content/Intent;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)V
    .locals 3
    .parameter "context"
    .parameter "data"
    .parameter "cellInfo"
    .parameter "insertAtFirst"

    .prologue
    .line 2075
    invoke-virtual {p0, p3}, Lcom/sec/android/app/twlauncher/Launcher;->findPreferredSingleSlotOrAnySlot(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)I

    move-result v1

    .line 2076
    .local v1, page:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 2086
    :cond_0
    :goto_0
    return-void

    .line 2078
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 2079
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(I)V

    .line 2082
    :cond_2
    invoke-static {p1, p2}, Lcom/sec/android/app/twlauncher/Launcher;->infoFromApplicationIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v0

    .line 2083
    .local v0, info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 2084
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2, v0, p3, p4}, Lcom/sec/android/app/twlauncher/Workspace;->addApplicationShortcut(Lcom/sec/android/app/twlauncher/ApplicationInfo;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)V

    goto :goto_0
.end method

.method completeAddWidget(I)V
    .locals 5
    .parameter "screen"

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6846
    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetType:I

    .line 6848
    .local v0, type:I
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCellCoordinates:[I

    aget v1, v1, v2

    if-eq v1, v4, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCellCoordinates:[I

    aget v1, v1, v3

    if-ne v1, v4, :cond_1

    .line 6849
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCellCoordinates:[I

    aput v2, v1, v2

    .line 6850
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCellCoordinates:[I

    aput v2, v1, v3

    .line 6853
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetPreview:Lcom/sec/android/app/twlauncher/WidgetPreview;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/WidgetPreview;->removeAllViews()V

    .line 6855
    if-ne v0, v3, :cond_3

    .line 6856
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidget:Lcom/sec/android/app/twlauncher/Widget;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->addSearch(Lcom/sec/android/app/twlauncher/Widget;)V

    .line 6863
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetPreview:Lcom/sec/android/app/twlauncher/WidgetPreview;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/WidgetPreview;->setVisibility(I)V

    .line 6865
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->clearAddWidget()V

    .line 6866
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/DragLayer;->invalidate()V

    .line 6867
    return-void

    .line 6857
    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 6858
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->completePreviewAppWidget()V

    goto :goto_0

    .line 6859
    :cond_4
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 6860
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/twlauncher/Launcher;->addSamsungWidget(Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;I)V

    goto :goto_0
.end method

.method public createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    .locals 5
    .parameter "packageName"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 861
    invoke-super {p0, p1, p2}, Landroid/app/ActivityGroup;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 862
    .local v1, remoteCtxt:Landroid/content/Context;
    if-eqz v1, :cond_0

    .line 863
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 864
    .local v2, res:Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 865
    .local v0, config:Landroid/content/res/Configuration;
    iget v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResOrientation:I

    iget v4, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v3, v4, :cond_0

    .line 866
    iget v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResOrientation:I

    iput v3, v0, Landroid/content/res/Configuration;->orientation:I

    .line 867
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 870
    .end local v0           #config:Landroid/content/res/Configuration;
    .end local v2           #res:Landroid/content/res/Resources;
    :cond_0
    return-object v1
.end method

.method createShortcut(ILandroid/view/ViewGroup;Lcom/sec/android/app/twlauncher/ApplicationInfo;)Landroid/view/View;
    .locals 4
    .parameter "layoutResId"
    .parameter "parent"
    .parameter "info"

    .prologue
    const/4 v3, 0x0

    .line 2051
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mInflater:Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2053
    .local v0, favorite:Landroid/widget/TextView;
    invoke-virtual {p3}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isFiltered()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2054
    iget-object v1, p3, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, p0}, Lcom/sec/android/app/twlauncher/Utilities;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p3, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 2055
    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setFiltered(Z)V

    .line 2058
    :cond_0
    iget-object v1, p3, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2059
    invoke-virtual {p3}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2060
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 2061
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2063
    return-object v0
.end method

.method createShortcut(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Landroid/view/View;
    .locals 3
    .parameter

    .prologue
    .line 2037
    const v1, 0x7f030001

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v1, v0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->createShortcut(ILandroid/view/ViewGroup;Lcom/sec/android/app/twlauncher/ApplicationInfo;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public deactivateAllScrollMenus()V
    .locals 2

    .prologue
    .line 7457
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteZone:Lcom/sec/android/app/twlauncher/DeleteZone;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/DeleteZone;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getSetHomeMenu()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 7462
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setVisibility(I)V

    .line 7464
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getAppZoneAnim()Lcom/sec/android/app/twlauncher/ScalarAnimator;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    .line 7466
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpapersMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScrollMenu;->deactivate()V

    .line 7467
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mShortcutMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScrollMenu;->deactivate()V

    .line 7468
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScrollMenu;->deactivate()V

    .line 7469
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddToWorkspaceMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScrollMenu;->deactivate()V

    .line 7470
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScrollMenu;->deactivate()V

    .line 7471
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetDialog:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->deactivate()V

    .line 7473
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResolveInfoList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 7474
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResolveInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7475
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResolveInfoList:Ljava/util/List;

    .line 7478
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mActiveMenuId:I

    .line 7479
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 4116
    sget-object v0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->sTextureUploadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4121
    :try_start_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 4133
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 4195
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    monitor-exit v0

    move v0, v1

    :goto_1
    return v0

    .line 4143
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->handleBackKey(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4144
    monitor-exit v0

    move v0, v3

    goto :goto_1

    .line 4157
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 4160
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->isAddWidgetState()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4162
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    .line 4170
    monitor-exit v0

    move v0, v3

    goto :goto_1

    .line 4166
    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    .line 4167
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/DragLayer;->invalidate()V

    .line 4168
    monitor-exit v0

    move v0, v3

    goto :goto_1

    .line 4173
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 4175
    :sswitch_0
    monitor-exit v0

    move v0, v3

    goto :goto_1

    .line 4178
    :sswitch_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    if-nez v1, :cond_3

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isAnimating()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->isOpened()Z

    move-result v1

    if-nez v1, :cond_4

    iget v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    if-eq v1, v3, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4184
    :cond_4
    const-string v1, "Launcher"

    const-string v2, "In this case, Option menu is not shown #1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4185
    monitor-exit v0

    move v0, v3

    goto :goto_1

    .line 4187
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4188
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->deactivateAllScrollMenus()V

    goto :goto_0

    .line 4196
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 4133
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch

    .line 4162
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_1
    .end packed-switch

    .line 4173
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x52 -> :sswitch_1
    .end sparse-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 4102
    const/4 v0, 0x0

    .line 4103
    .local v0, res:Z
    sget-object v1, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->sTextureUploadLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4104
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 4105
    monitor-exit v1

    .line 4106
    return v0

    .line 4105
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public findPreferredSingleSlotOrAnySlot(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)I
    .locals 8
    .parameter "cellInfo"

    .prologue
    const/4 v5, 0x0

    const/4 v7, -0x1

    const/4 v3, 0x1

    .line 3947
    const/4 v0, 0x2

    new-array v2, v0, [I

    .local v2, xy:[I
    move-object v0, p0

    move-object v1, p1

    move v4, v3

    .line 3948
    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/Launcher;->findSlot(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;[IIIZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3949
    aget v0, v2, v5

    iput v0, p1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    .line 3950
    aget v0, v2, v3

    iput v0, p1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    .line 3951
    iget v0, p1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    .line 3958
    :goto_0
    return v0

    .line 3953
    :cond_0
    invoke-virtual {p0, p1, v3}, Lcom/sec/android/app/twlauncher/Launcher;->findSingleSlotAnywhere(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)I

    move-result v6

    .line 3955
    .local v6, page:I
    if-ne v6, v7, :cond_1

    move v0, v7

    .line 3956
    goto :goto_0

    :cond_1
    move v0, v6

    .line 3958
    goto :goto_0
.end method

.method public findSingleSlotAnywhere(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)I
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3972
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    iput v0, p1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    .line 3973
    new-array v1, v2, [I

    .line 3974
    iget v0, p1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    aput v0, v1, v7

    .line 3975
    iget v0, p1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    aput v0, v1, v8

    .line 3977
    new-array v2, v2, [I

    .line 3978
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b0006

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 3979
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0b0007

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    move-object v0, p0

    move-object v5, p1

    move v6, p2

    .line 3980
    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/Launcher;->findSlotAndScreen([I[IIILcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)I

    move-result v0

    .line 3982
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 3983
    aget v3, v2, v7

    iput v3, p1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanX:I

    .line 3984
    aget v2, v2, v8

    iput v2, p1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanY:I

    .line 3985
    aget v2, v1, v7

    iput v2, p1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    .line 3986
    aget v1, v1, v8

    iput v1, p1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    .line 3987
    iput v0, p1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    .line 3989
    :cond_0
    return v0
.end method

.method findSlotAndScreen([I[IIILcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)I
    .locals 8
    .parameter "xy"
    .parameter "spans"
    .parameter "width"
    .parameter "height"
    .parameter "cellInfo"
    .parameter "createPage"

    .prologue
    .line 6633
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/Launcher;->findSlotAndScreen([I[IIILcom/sec/android/app/twlauncher/CellLayout$CellInfo;ZZ)I

    move-result v0

    return v0
.end method

.method findSlotAndScreen([I[IIILcom/sec/android/app/twlauncher/CellLayout$CellInfo;ZZ)I
    .locals 9
    .parameter "xy"
    .parameter "spans"
    .parameter "width"
    .parameter "height"
    .parameter "cellInfo"
    .parameter "isDefault"
    .parameter "createPage"

    .prologue
    .line 6638
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    .line 6639
    .local v6, w:Lcom/sec/android/app/twlauncher/Workspace;
    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    .line 6640
    .local v0, count:I
    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v1

    .line 6642
    .local v1, currentScreen:I
    move v2, v1

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 6643
    invoke-virtual {v6, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v3

    .line 6644
    .local v3, layout:Lcom/sec/android/app/twlauncher/CellLayout;
    if-eqz p6, :cond_1

    .line 6645
    invoke-virtual {v3, p3, p4}, Lcom/sec/android/app/twlauncher/CellLayout;->rectToCell(II)[I

    move-result-object v5

    .line 6650
    .local v5, span:[I
    :goto_1
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Lcom/sec/android/app/twlauncher/CellLayout;->findAllVacantCells([ZLandroid/view/View;)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object p5

    .line 6651
    if-eqz p5, :cond_0

    const/4 v7, 0x0

    aget v7, v5, v7

    const/4 v8, 0x1

    aget v8, v5, v8

    invoke-virtual {p5, p1, v7, v8}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->findCellForSpan([III)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 6652
    :cond_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    aget v8, v5, v8

    aput v8, p2, v7

    .line 6653
    const/4 v7, 0x1

    const/4 v8, 0x1

    aget v8, v5, v8

    aput v8, p2, v7

    move v7, v2

    .line 6694
    .end local v3           #layout:Lcom/sec/android/app/twlauncher/CellLayout;
    .end local v5           #span:[I
    :goto_2
    return v7

    .line 6647
    .restart local v3       #layout:Lcom/sec/android/app/twlauncher/CellLayout;
    :cond_1
    invoke-virtual {v3, p3, p4}, Lcom/sec/android/app/twlauncher/CellLayout;->rectToCell2(II)[I

    move-result-object v5

    .restart local v5       #span:[I
    goto :goto_1

    .line 6642
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6658
    .end local v3           #layout:Lcom/sec/android/app/twlauncher/CellLayout;
    .end local v5           #span:[I
    :cond_3
    if-lez v1, :cond_7

    .line 6660
    const/4 v7, 0x1

    sub-int v2, v1, v7

    :goto_3
    if-ltz v2, :cond_7

    .line 6661
    invoke-virtual {v6, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v3

    .line 6662
    .restart local v3       #layout:Lcom/sec/android/app/twlauncher/CellLayout;
    if-eqz p6, :cond_5

    .line 6663
    invoke-virtual {v3, p3, p4}, Lcom/sec/android/app/twlauncher/CellLayout;->rectToCell(II)[I

    move-result-object v5

    .line 6668
    .restart local v5       #span:[I
    :goto_4
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Lcom/sec/android/app/twlauncher/CellLayout;->findAllVacantCells([ZLandroid/view/View;)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object p5

    .line 6669
    if-eqz p5, :cond_4

    const/4 v7, 0x0

    aget v7, v5, v7

    const/4 v8, 0x1

    aget v8, v5, v8

    invoke-virtual {p5, p1, v7, v8}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->findCellForSpan([III)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 6670
    :cond_4
    const/4 v7, 0x0

    const/4 v8, 0x0

    aget v8, v5, v8

    aput v8, p2, v7

    .line 6671
    const/4 v7, 0x1

    const/4 v8, 0x1

    aget v8, v5, v8

    aput v8, p2, v7

    move v7, v2

    .line 6672
    goto :goto_2

    .line 6665
    .end local v5           #span:[I
    :cond_5
    invoke-virtual {v3, p3, p4}, Lcom/sec/android/app/twlauncher/CellLayout;->rectToCell2(II)[I

    move-result-object v5

    .restart local v5       #span:[I
    goto :goto_4

    .line 6660
    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 6677
    .end local v3           #layout:Lcom/sec/android/app/twlauncher/CellLayout;
    .end local v5           #span:[I
    :cond_7
    if-eqz p7, :cond_a

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->isAllPageSlot(I)Z

    move-result v7

    if-nez v7, :cond_a

    .line 6678
    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v7

    const/4 v8, 0x1

    sub-int v4, v7, v8

    .line 6679
    .local v4, page:I
    invoke-virtual {v6, v4}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v3

    .line 6680
    .restart local v3       #layout:Lcom/sec/android/app/twlauncher/CellLayout;
    if-eqz p6, :cond_9

    .line 6681
    invoke-virtual {v3, p3, p4}, Lcom/sec/android/app/twlauncher/CellLayout;->rectToCell(II)[I

    move-result-object v5

    .line 6686
    .restart local v5       #span:[I
    :goto_5
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Lcom/sec/android/app/twlauncher/CellLayout;->findAllVacantCells([ZLandroid/view/View;)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object p5

    .line 6687
    if-eqz p5, :cond_8

    const/4 v7, 0x0

    aget v7, v5, v7

    const/4 v8, 0x1

    aget v8, v5, v8

    invoke-virtual {p5, p1, v7, v8}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->findCellForSpan([III)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 6688
    :cond_8
    const/4 v7, 0x0

    const/4 v8, 0x0

    aget v8, v5, v8

    aput v8, p2, v7

    .line 6689
    const/4 v7, 0x1

    const/4 v8, 0x1

    aget v8, v5, v8

    aput v8, p2, v7

    move v7, v4

    .line 6690
    goto :goto_2

    .line 6683
    .end local v5           #span:[I
    :cond_9
    invoke-virtual {v3, p3, p4}, Lcom/sec/android/app/twlauncher/CellLayout;->rectToCell2(II)[I

    move-result-object v5

    .restart local v5       #span:[I
    goto :goto_5

    .line 6694
    .end local v3           #layout:Lcom/sec/android/app/twlauncher/CellLayout;
    .end local v4           #page:I
    .end local v5           #span:[I
    :cond_a
    const/4 v7, -0x1

    goto/16 :goto_2
.end method

.method getAddToWorkspaceBackground()Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground;
    .locals 1

    .prologue
    .line 5006
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddToWorkspaceBackground:Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground;

    return-object v0
.end method

.method getAddWidgetDialog()Lcom/sec/android/app/twlauncher/AddWidgetDialog;
    .locals 1

    .prologue
    .line 5014
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetDialog:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    return-object v0
.end method

.method getAdjacentBlankScreen(I)I
    .locals 12
    .parameter "screen"

    .prologue
    .line 6960
    iget v7, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetType:I

    .line 6961
    .local v7, type:I
    const/4 v4, -0x1

    .line 6962
    .local v4, ret:I
    const/4 v10, 0x1

    if-eq v7, v10, :cond_0

    const/4 v10, 0x2

    if-eq v7, v10, :cond_0

    const/4 v10, 0x3

    if-ne v7, v10, :cond_6

    .line 6964
    :cond_0
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCellCoordinates:[I

    .line 6965
    .local v9, xy:[I
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSpans:[I

    .line 6967
    .local v6, spans:[I
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    .line 6968
    .local v8, w:Lcom/sec/android/app/twlauncher/Workspace;
    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    .line 6970
    .local v1, count:I
    move v2, p1

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 6971
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v10, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v3

    .line 6972
    .local v3, layout:Lcom/sec/android/app/twlauncher/CellLayout;
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Lcom/sec/android/app/twlauncher/CellLayout;->findAllVacantCells([ZLandroid/view/View;)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v0

    .line 6973
    .local v0, cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    if-eqz v0, :cond_2

    const/4 v10, 0x0

    aget v10, v6, v10

    const/4 v11, 0x1

    aget v11, v6, v11

    invoke-virtual {v0, v9, v10, v11}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->findCellForSpan([III)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 6974
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    const/4 v11, 0x0

    aput v2, v10, v11

    .line 6975
    move v4, v2

    .line 6980
    .end local v0           #cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    .end local v3           #layout:Lcom/sec/android/app/twlauncher/CellLayout;
    :cond_1
    if-nez p1, :cond_3

    move v5, v4

    .line 6995
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v4           #ret:I
    .end local v6           #spans:[I
    .end local v8           #w:Lcom/sec/android/app/twlauncher/Workspace;
    .end local v9           #xy:[I
    .local v5, ret:I
    :goto_1
    return v5

    .line 6970
    .end local v5           #ret:I
    .restart local v0       #cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    .restart local v1       #count:I
    .restart local v2       #i:I
    .restart local v3       #layout:Lcom/sec/android/app/twlauncher/CellLayout;
    .restart local v4       #ret:I
    .restart local v6       #spans:[I
    .restart local v8       #w:Lcom/sec/android/app/twlauncher/Workspace;
    .restart local v9       #xy:[I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6983
    .end local v0           #cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    .end local v3           #layout:Lcom/sec/android/app/twlauncher/CellLayout;
    :cond_3
    const/4 v10, 0x1

    sub-int v2, p1, v10

    :goto_2
    if-ltz v2, :cond_6

    .line 6984
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v10, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v3

    .line 6985
    .restart local v3       #layout:Lcom/sec/android/app/twlauncher/CellLayout;
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Lcom/sec/android/app/twlauncher/CellLayout;->findAllVacantCells([ZLandroid/view/View;)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v0

    .line 6986
    .restart local v0       #cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    if-eqz v0, :cond_5

    const/4 v10, 0x0

    aget v10, v6, v10

    const/4 v11, 0x1

    aget v11, v6, v11

    invoke-virtual {v0, v9, v10, v11}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->findCellForSpan([III)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 6987
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    const/4 v11, 0x1

    aput v2, v10, v11

    .line 6988
    const/4 v10, -0x1

    if-ne v4, v10, :cond_4

    .line 6989
    move v4, v2

    :cond_4
    move v5, v4

    .line 6990
    .end local v4           #ret:I
    .restart local v5       #ret:I
    goto :goto_1

    .line 6983
    .end local v5           #ret:I
    .restart local v4       #ret:I
    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .end local v0           #cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #layout:Lcom/sec/android/app/twlauncher/CellLayout;
    .end local v6           #spans:[I
    .end local v8           #w:Lcom/sec/android/app/twlauncher/Workspace;
    .end local v9           #xy:[I
    :cond_6
    move v5, v4

    .line 6995
    .end local v4           #ret:I
    .restart local v5       #ret:I
    goto :goto_1
.end method

.method getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;
    .locals 1

    .prologue
    .line 5050
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    return-object v0
.end method

.method public getAppWidgetHost()Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;
    .locals 1

    .prologue
    .line 2417
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    return-object v0
.end method

.method getCurrentImageMenuWallpaperDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 7194
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDimWallpaperImageDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getCurrentImageWallpaperDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 7190
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperImageDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getDeleteZone()Lcom/sec/android/app/twlauncher/DeleteZone;
    .locals 1

    .prologue
    .line 5074
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteZone:Lcom/sec/android/app/twlauncher/DeleteZone;

    return-object v0
.end method

.method getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;
    .locals 1

    .prologue
    .line 5062
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    return-object v0
.end method

.method public getFolderUi(Lcom/sec/android/app/twlauncher/FolderInfo;)Lcom/sec/android/app/twlauncher/Folder;
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 4786
    instance-of v1, p1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v1, :cond_2

    .line 4787
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/UserFolder;->fromXml(Landroid/content/Context;)Lcom/sec/android/app/twlauncher/UserFolder;

    move-result-object v2

    .line 4789
    invoke-static {}, Lcom/sec/android/app/twlauncher/BuildLocaleChecker;->getBuildLocale()I

    move-result v1

    if-ne v1, v4, :cond_4

    .line 4790
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getSize()I

    move-result v1

    .line 4792
    if-nez v1, :cond_1

    .line 4793
    iget-object v1, v2, Lcom/sec/android/app/twlauncher/Folder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v1, v5}, Landroid/widget/AbsListView;->setVisibility(I)V

    .line 4794
    iget-object v1, v2, Lcom/sec/android/app/twlauncher/Folder;->mFolderText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4795
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/FolderInfo;->getOwner()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 4796
    iget-object v1, v2, Lcom/sec/android/app/twlauncher/Folder;->mFolderText:Landroid/widget/TextView;

    const v3, 0x7f080081

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    move-object v1, v2

    .line 4811
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/Folder;->setDragger(Lcom/sec/android/app/twlauncher/DragController;)V

    .line 4812
    invoke-virtual {v1, p0}, Lcom/sec/android/app/twlauncher/Folder;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 4813
    invoke-virtual {v1, p1}, Lcom/sec/android/app/twlauncher/Folder;->bind(Lcom/sec/android/app/twlauncher/FolderInfo;)V

    .line 4814
    iput-boolean v4, p1, Lcom/sec/android/app/twlauncher/FolderInfo;->opened:Z

    .line 4815
    :goto_2
    return-object v1

    .line 4798
    :cond_0
    iget-object v1, v2, Lcom/sec/android/app/twlauncher/Folder;->mFolderText:Landroid/widget/TextView;

    const v3, 0x7f080082

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 4801
    :cond_1
    iget-object v1, v2, Lcom/sec/android/app/twlauncher/Folder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v1, v3}, Landroid/widget/AbsListView;->setVisibility(I)V

    .line 4802
    iget-object v1, v2, Lcom/sec/android/app/twlauncher/Folder;->mFolderText:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 4806
    :cond_2
    instance-of v1, p1, Lcom/sec/android/app/twlauncher/LiveFolderInfo;

    if-eqz v1, :cond_3

    .line 4807
    invoke-static {p0, p1}, Lcom/sec/android/app/twlauncher/LiveFolder;->fromXml(Landroid/content/Context;Lcom/sec/android/app/twlauncher/FolderInfo;)Lcom/sec/android/app/twlauncher/LiveFolder;

    move-result-object v1

    goto :goto_1

    .line 4809
    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    move-object v1, v2

    goto :goto_1
.end method

.method getGLSurfaceViewGroup()Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;
    .locals 1

    .prologue
    .line 5066
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mGLSurfaceViewGroup:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    return-object v0
.end method

.method getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;
    .locals 1

    .prologue
    .line 5070
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mLauncherManager:Lcom/sec/android/app/twlauncher/LauncherManager;

    return-object v0
.end method

.method getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;
    .locals 1

    .prologue
    .line 5058
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuDrawer:Lcom/sec/android/app/twlauncher/MenuDrawer;

    return-object v0
.end method

.method public getMenuItemDeleteIconSurface(Lcom/sec/android/app/twlauncher/GLCanvas;)Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 7519
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteIconSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    if-nez v0, :cond_0

    .line 7520
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 7521
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 7522
    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->drawableToRetainedSurface(Lcom/sec/android/app/twlauncher/GLCanvas;Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteIconSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    .line 7524
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteIconSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    return-object v0
.end method

.method public getMenuItemEditCornerSurface(Lcom/sec/android/app/twlauncher/GLCanvas;)Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 7528
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mEditCornerSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    if-nez v0, :cond_0

    .line 7529
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 7530
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 7531
    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->drawableToRetainedSurface(Lcom/sec/android/app/twlauncher/GLCanvas;Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mEditCornerSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    .line 7533
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mEditCornerSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    return-object v0
.end method

.method getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;
    .locals 1

    .prologue
    .line 5054
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    return-object v0
.end method

.method protected getNewFolderName(I)Ljava/lang/CharSequence;
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 5199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f080004

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5201
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\\d+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 5206
    if-ne p1, v6, :cond_1

    .line 5207
    sget-object v3, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/LauncherModel;->getWorkspaceFolderList()Ljava/util/ArrayList;

    move-result-object v3

    .line 5214
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/twlauncher/FolderInfo;

    .line 5215
    iget v4, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    if-ne v4, v7, :cond_0

    .line 5218
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/FolderInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5219
    invoke-virtual {v2, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 5220
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5223
    invoke-virtual {v4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 5238
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 5208
    :cond_1
    if-ne p1, v7, :cond_2

    .line 5209
    sget-object v3, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/LauncherModel;->getMenuManagerFolderList()Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_0

    .line 5211
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 5249
    :goto_2
    return-object v0

    .line 5241
    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 5244
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v6

    :cond_4
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 5245
    if-lt v2, v3, :cond_4

    if-ltz v3, :cond_4

    .line 5246
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 5249
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method getQuickViewMainMenu()Lcom/sec/android/app/twlauncher/QuickViewMainMenu;
    .locals 1

    .prologue
    .line 5034
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    return-object v0
.end method

.method getQuickViewWorkspace()Lcom/sec/android/app/twlauncher/QuickViewWorkspace;
    .locals 1

    .prologue
    .line 4960
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    return-object v0
.end method

.method getResOrientation()I
    .locals 1

    .prologue
    .line 7054
    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResOrientation:I

    return v0
.end method

.method getSamsungWidgetPackageManager()Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;
    .locals 1

    .prologue
    .line 5046
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    return-object v0
.end method

.method public getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 7312
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStateQuickNavigation()I
    .locals 1

    .prologue
    .line 7076
    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    return v0
.end method

.method getWidgetMultipleSize(Landroid/appwidget/AppWidgetProviderInfo;)Lcom/sec/android/app/twlauncher/MultipleSize;
    .locals 11
    .parameter "widget"

    .prologue
    const/16 v10, 0x78

    .line 3476
    new-instance v4, Lcom/sec/android/app/twlauncher/MultipleSize;

    invoke-direct {v4}, Lcom/sec/android/app/twlauncher/MultipleSize;-><init>()V

    .line 3477
    .local v4, ms:Lcom/sec/android/app/twlauncher/MultipleSize;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->loadSupportCellSizes(Landroid/appwidget/AppWidgetProviderInfo;)[Ljava/lang/String;

    move-result-object v1

    .line 3478
    .local v1, array:[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 3479
    move-object v0, v1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .line 3480
    .local v5, parsed:Ljava/lang/String;
    const/4 v8, 0x0

    invoke-virtual {v5, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 3481
    .local v6, spanX:I
    invoke-virtual {v5, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 3482
    .local v7, spanY:I
    invoke-virtual {v4, v6, v7}, Lcom/sec/android/app/twlauncher/MultipleSize;->setSize(II)Z

    .line 3479
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3485
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #parsed:Ljava/lang/String;
    .end local v6           #spanX:I
    .end local v7           #spanY:I
    :cond_0
    return-object v4
.end method

.method getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;
    .locals 1

    .prologue
    .line 5042
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    return-object v0
.end method

.method ignoreGLPauseResume()Z
    .locals 2

    .prologue
    .line 192
    const-string v0, "ro.build.id"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FROYO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isAddWidgetState()Z
    .locals 1

    .prologue
    .line 5082
    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetType:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isAllPageSlot(I)Z
    .locals 5
    .parameter

    .prologue
    const v4, 0x7f080053

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 6938
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    aput v1, v0, v2

    .line 6939
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    aput v1, v0, v3

    .line 6940
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->getAdjacentBlankScreen(I)I

    move-result v0

    .line 6942
    if-ne v0, v1, :cond_2

    .line 6943
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    .line 6944
    sget v1, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    if-ge v0, v1, :cond_0

    .line 6945
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->createBlankPage()I

    move v0, v2

    .line 6956
    :goto_0
    return v0

    .line 6947
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_1

    .line 6948
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    .line 6952
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v3

    .line 6953
    goto :goto_0

    .line 6951
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public isAppWidgetPreviewVisible()Z
    .locals 2

    .prologue
    .line 2356
    const/4 v0, 0x0

    .line 2357
    .local v0, result:Z
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetPreview:Lcom/sec/android/app/twlauncher/WidgetPreview;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/WidgetPreview;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 2358
    const/4 v0, 0x1

    .line 2361
    :cond_0
    return v0
.end method

.method public isDefaultIMEI()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "Default"

    .line 875
    .line 878
    invoke-static {}, Lcom/sec/android/app/twlauncher/BuildLocaleChecker;->getBuildLocale()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 883
    const-string v0, "357858010034783"

    .line 885
    const-string v1, "ril.IMEI"

    const-string v2, "Default"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 900
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v3

    .line 906
    :goto_1
    return v0

    .line 889
    :cond_0
    const-string v0, "999999999999999"

    .line 890
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_0

    .line 902
    :cond_1
    if-eqz v0, :cond_2

    const-string v1, "Default"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 903
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move v0, v4

    .line 904
    goto :goto_1

    :cond_2
    move v0, v4

    .line 906
    goto :goto_1
.end method

.method public isManagingWallpaper()Z
    .locals 1

    .prologue
    .line 7136
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isSearchManagerVisible()Z
    .locals 3

    .prologue
    .line 2999
    const/4 v0, 0x0

    .line 3001
    .local v0, bRetVal:Z
    const-string v2, "search"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    .line 3002
    .local v1, searchManager:Landroid/app/SearchManager;
    invoke-virtual {v1}, Landroid/app/SearchManager;->isVisible()Z

    move-result v0

    .line 3003
    return v0
.end method

.method isWindowOpaque()Z
    .locals 1

    .prologue
    .line 7098
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsOpaqueWindow:Z

    return v0
.end method

.method isWorkspaceLocked()Z
    .locals 1

    .prologue
    .line 4843
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopLocked:Z

    return v0
.end method

.method loadMenuMode()I
    .locals 3

    .prologue
    .line 6746
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "menu"

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method loadSupportCellSizes(Landroid/appwidget/AppWidgetProviderInfo;)[Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 3489
    .line 3491
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3492
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.widgetapp.APPWIDGET_RESIZE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3493
    iget-object v2, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3494
    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 3500
    :try_start_0
    iget-object v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/twlauncher/Launcher;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3506
    :goto_0
    if-eqz v1, :cond_3

    .line 3507
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 3508
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 3510
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    .line 3511
    iget-object v3, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v4, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3512
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const-string v3, "com.sec.android.appwidget.widgetinfo"

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 3514
    if-eqz v0, :cond_3

    .line 3518
    :cond_1
    :try_start_1
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 3526
    :cond_2
    :goto_1
    const-string v1, "supportCellSizes"

    const/4 v3, 0x0

    invoke-interface {v0, v5, v1, v3}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 3528
    if-lez v0, :cond_3

    .line 3529
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 3537
    :goto_2
    return-object v0

    .line 3502
    :catch_0
    move-exception v1

    .line 3503
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v1, v5

    goto :goto_0

    .line 3520
    :catch_1
    move-exception v1

    .line 3521
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_1

    .line 3522
    :catch_2
    move-exception v1

    .line 3523
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :cond_3
    move-object v0, v5

    goto :goto_2
.end method

.method menudiscard()V
    .locals 1

    .prologue
    .line 6296
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->discard()V

    .line 6297
    return-void
.end method

.method menusave()Z
    .locals 1

    .prologue
    .line 6292
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->save()Z

    move-result v0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    const-string v5, "appWidgetId"

    .line 1321
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWaitingForResult:Z

    .line 1323
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-nez v0, :cond_0

    .line 1324
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->findAllVacantCellsFromModel()Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 1335
    :cond_0
    if-ne p2, v3, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    if-eqz v0, :cond_7

    .line 1336
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->updateAddItemCellInfo()V

    .line 1337
    packed-switch p1, :pswitch_data_0

    .line 1388
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 1339
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopLocked:Z

    if-nez v1, :cond_2

    move v1, v4

    :goto_1
    invoke-virtual {p0, p0, p3, v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->completeAddApplication(Landroid/content/Context;Landroid/content/Intent;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)V

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    .line 1344
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopLocked:Z

    if-nez v1, :cond_3

    move v1, v4

    :goto_2
    invoke-direct {p0, p3, v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->completeAddShortcut(Landroid/content/Intent;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)V

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_2

    .line 1349
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopLocked:Z

    if-nez v1, :cond_4

    move v1, v4

    :goto_3
    invoke-direct {p0, p3, v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->completeAddLiveFolder(Landroid/content/Intent;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)V

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_3

    .line 1353
    :pswitch_4
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "appWidgetId"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1355
    const-string v0, "appWidgetComponentName"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 1358
    if-nez v0, :cond_5

    .line 1359
    invoke-virtual {p0, p3}, Lcom/sec/android/app/twlauncher/Launcher;->addAppWidget(Landroid/content/Intent;)V

    goto :goto_0

    .line 1362
    :cond_5
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1363
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1371
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v2, v1, v0}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V

    .line 1372
    invoke-virtual {p0, p3}, Lcom/sec/android/app/twlauncher/Launcher;->addAppWidget(Landroid/content/Intent;)V

    goto :goto_0

    .line 1377
    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopLocked:Z

    if-nez v1, :cond_6

    move v1, v4

    :goto_4
    invoke-direct {p0, p3, v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->completeAddAppWidget(Landroid/content/Intent;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)V

    goto :goto_0

    :cond_6
    move v1, v2

    goto :goto_4

    .line 1380
    :cond_7
    const/16 v0, 0x9

    if-eq p1, v0, :cond_8

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    :cond_8
    if-nez p2, :cond_1

    if-eqz p3, :cond_1

    .line 1383
    const-string v0, "appWidgetId"

    invoke-virtual {p3, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1384
    if-eq v0, v3, :cond_1

    .line 1385
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    goto :goto_0

    .line 1337
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method onApplicationsLoaded(Lcom/sec/android/app/twlauncher/ApplicationsAdapter;)V
    .locals 2
    .parameter

    .prologue
    .line 4364
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDestroyed:Z

    if-nez v0, :cond_2

    .line 4365
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBinder:Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBinder:Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->skippedApplications()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4366
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->setAdapter(Lcom/sec/android/app/twlauncher/ApplicationsAdapter;)V

    .line 4372
    :cond_1
    :goto_0
    return-void

    .line 4369
    :cond_2
    const-string v0, "Launcher.LauncherModel"

    const-string v1, "onApplicationsLoaded() : DISCARD applications. Launcher destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 4670
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 4671
    instance-of v1, v0, Lcom/sec/android/app/twlauncher/FolderInfo;

    if-eqz v1, :cond_1

    .line 4672
    check-cast v0, Lcom/sec/android/app/twlauncher/FolderInfo;

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->handleFolderClick(Lcom/sec/android/app/twlauncher/FolderInfo;)V

    .line 4688
    :cond_0
    :goto_0
    return-void

    .line 4675
    :cond_1
    instance-of v1, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v1, :cond_0

    .line 4677
    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 4678
    if-nez v0, :cond_2

    .line 4679
    const-string v0, "Launcher"

    const-string v1, "Failed to find inntent for application shortcut"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4681
    :cond_2
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 4682
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 4683
    new-instance v2, Landroid/graphics/Rect;

    aget v3, v1, v5

    aget v4, v1, v7

    aget v5, v1, v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    aget v1, v1, v7

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v1, v6

    invoke-direct {v2, v3, v4, v5, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 4685
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->startActivitySafely(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    const-string v6, "Launcher"

    .line 714
    const-string v0, "Launcher"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Created Launcher = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Destroyed flag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDestroyed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsOpaqueWindow:Z

    .line 717
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsOpaqueWindow:Z

    .line 718
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->overridePendingTransitionForOpaqueWindowExit()V

    .line 719
    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsOpaqueWindow:Z

    .line 722
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    .line 725
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 728
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->getMenuManagerUserFolderModel()Lcom/sec/android/app/twlauncher/UserFolderModel;

    move-result-object v0

    .line 729
    if-nez v0, :cond_3

    .line 730
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    new-instance v1, Lcom/sec/android/app/twlauncher/UserFolderModel;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/android/app/twlauncher/UserFolderModel;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->setMenuManagerUserFolderModel(Lcom/sec/android/app/twlauncher/UserFolderModel;)V

    .line 735
    :goto_0
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->registerPkgChangeListener(Landroid/app/Application;)V

    .line 736
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 737
    const/high16 v1, 0x7f08

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mProductModelFamilyName:Ljava/lang/String;

    .line 738
    const v1, 0x7f080001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mProductModelName:Ljava/lang/String;

    .line 739
    const-string v1, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate():  product model family:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mProductModelFamilyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " product model : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mProductModelName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    const/high16 v1, 0x7f09

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mForce16BitWindow:Z

    .line 743
    const/high16 v1, 0x7f0a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    .line 744
    const v1, 0x7f0a0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN_COUNT:I

    .line 745
    const v1, 0x7f090002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_CONCENTRATION_EFFECT:Z

    .line 746
    const v1, 0x7f090003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_LISTMODE:Z

    .line 747
    const v1, 0x7f0a0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/twlauncher/Launcher;->NUMBER_CELLS_X:I

    .line 748
    const v1, 0x7f0a0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/twlauncher/Launcher;->NUMBER_CELLS_Y:I

    .line 750
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mInflater:Landroid/view/LayoutInflater;

    .line 752
    const-string v0, "launcher"

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/twlauncher/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mPrefs:Landroid/content/SharedPreferences;

    .line 754
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 756
    new-instance v0, Landroid/content/MutableContextWrapper;

    invoke-direct {v0, p0}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHostContext:Landroid/content/MutableContextWrapper;

    .line 757
    new-instance v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHostContext:Landroid/content/MutableContextWrapper;

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    .line 758
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;->startListening()V

    .line 760
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResOrientation:I

    .line 765
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 766
    iget v0, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mScreenOrientation:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 777
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->checkForLocaleChange()V

    .line 779
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->getInstance(Landroid/app/ActivityGroup;)Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    .line 780
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mLocaleChanged:Z

    invoke-virtual {v0, p0, v1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->start(Landroid/content/Context;Z)V

    .line 782
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->setWallpaperDimension()V

    .line 784
    const v0, 0x7f03000b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->setContentView(I)V

    .line 793
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->setupViews()V

    .line 795
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->registerIntentReceivers()V

    .line 796
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->registerContentObservers()V

    .line 797
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mPowerSavingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 799
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSavedState:Landroid/os/Bundle;

    .line 800
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSavedState:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->restoreState(Landroid/os/Bundle;)V

    .line 806
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRestoring:Z

    if-nez v0, :cond_0

    .line 807
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->startLoaders()V

    .line 811
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 812
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-static {v0, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 814
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->saveScreenInfo()V

    .line 818
    new-instance v0, Lcom/sec/android/app/twlauncher/WallpaperCanvasView;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/WallpaperCanvasView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperCanvasView:Lcom/sec/android/app/twlauncher/WallpaperCanvasView;

    .line 819
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperCanvasView:Lcom/sec/android/app/twlauncher/WallpaperCanvasView;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/WallpaperCanvasView;->setWorkspace(Lcom/sec/android/app/twlauncher/Workspace;)V

    .line 820
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperCanvasView:Lcom/sec/android/app/twlauncher/WallpaperCanvasView;

    const v1, 0x7f060009

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/WallpaperCanvasView;->setId(I)V

    .line 821
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 823
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperCanvasView:Lcom/sec/android/app/twlauncher/WallpaperCanvasView;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/twlauncher/Launcher;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 824
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/DragLayer;->bringToFront()V

    .line 827
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->isDefaultIMEI()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 828
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->setSomethingsInDefaultIMEI()V

    .line 833
    :cond_1
    new-instance v0, Lcom/sec/android/app/twlauncher/DataConnChecker;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/DataConnChecker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDataConnChecker:Lcom/sec/android/app/twlauncher/DataConnChecker;

    .line 835
    sget-boolean v0, Lcom/sec/android/app/twlauncher/Launcher;->mFirstTime:Z

    if-eqz v0, :cond_2

    .line 836
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mtp_usb_connection_status"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 837
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "media_player_mode"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 838
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "end_key_press"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 839
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mtp_usb_conditions_met"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 840
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mtp_running_status"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 841
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "phone_lock_status"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 843
    :cond_2
    sput-boolean v3, Lcom/sec/android/app/twlauncher/Launcher;->mFirstTime:Z

    .line 845
    new-instance v0, Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200d2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;-><init>(Landroid/content/res/Resources;I)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mPageBackground:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    .line 846
    new-instance v0, Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200d3

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;-><init>(Landroid/content/res/Resources;I)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mPageHighlight:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    .line 847
    new-instance v0, Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200cd

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;-><init>(Landroid/content/res/Resources;I)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mPageOutline:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    .line 848
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mGLSurfaceViewGroup:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mPageBackground:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->queuePreload(Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;)V

    .line 849
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mGLSurfaceViewGroup:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mPageHighlight:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->queuePreload(Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;)V

    .line 852
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.twlauncher.ACTION_MAIN_LAUNCHER_STARTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    .line 855
    return-void

    .line 733
    :cond_3
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/UserFolderModel;->removeAllViews()V

    goto/16 :goto_0

    .line 767
    :catch_0
    move-exception v0

    .line 769
    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResOrientation:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mScreenOrientation:I

    goto/16 :goto_1
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 5087
    .line 5088
    packed-switch p1, :pswitch_data_0

    .line 5150
    invoke-super {p0, p1, p2}, Landroid/app/ActivityGroup;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 5153
    :goto_0
    return-object v0

    :pswitch_0
    move-object v0, v1

    .line 5090
    goto :goto_0

    .line 5092
    :pswitch_1
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$RenameFolder;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/twlauncher/Launcher$RenameFolder;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher$RenameFolder;->createRenameFolderDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 5095
    :pswitch_2
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->createDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 5098
    :pswitch_3
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->createDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 5101
    :pswitch_4
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->createDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 5104
    :pswitch_5
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->createDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 5107
    :pswitch_6
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$CreateFolder;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/twlauncher/Launcher$CreateFolder;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher$CreateFolder;->createNameFolderDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 5110
    :pswitch_7
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    const v1, 0x7f080077

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog;->createDialog(II)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 5114
    :pswitch_8
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    const v1, 0x7f080078

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog;->createDialog(II)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 5117
    :pswitch_9
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    const v1, 0x7f080079

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog;->createDialog(II)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 5121
    :pswitch_a
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerHelp1;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerHelp1;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerHelp1;->createDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 5124
    :pswitch_b
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$DefaultSortConfirmDialog;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/twlauncher/Launcher$DefaultSortConfirmDialog;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher$DefaultSortConfirmDialog;->createDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 5130
    :pswitch_c
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$MotionPanningDialogOn;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/twlauncher/Launcher$MotionPanningDialogOn;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Launcher$MotionPanningDialogOn;->access$2200(Lcom/sec/android/app/twlauncher/Launcher$MotionPanningDialogOn;)Landroid/app/Dialog;

    move-result-object v0

    goto/16 :goto_0

    .line 5133
    :pswitch_d
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$MotionPanningDialogOff;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/twlauncher/Launcher$MotionPanningDialogOff;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Launcher$MotionPanningDialogOff;->access$2400(Lcom/sec/android/app/twlauncher/Launcher$MotionPanningDialogOff;)Landroid/app/Dialog;

    move-result-object v0

    goto/16 :goto_0

    .line 5136
    :pswitch_e
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$MenuEditDialog;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/twlauncher/Launcher$MenuEditDialog;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Launcher$MenuEditDialog;->access$2600(Lcom/sec/android/app/twlauncher/Launcher$MenuEditDialog;)Landroid/app/Dialog;

    move-result-object v0

    goto/16 :goto_0

    .line 5140
    :pswitch_f
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$ViewTypeDialog;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/twlauncher/Launcher$ViewTypeDialog;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/Launcher$ViewTypeDialog;->createDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto/16 :goto_0

    .line 5146
    :pswitch_10
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$TipsDialog;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/twlauncher/Launcher$TipsDialog;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/Launcher$TipsDialog;->createDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto/16 :goto_0

    .line 5088
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .parameter

    .prologue
    const v7, 0x7f02005f

    const/4 v6, 0x3

    const/4 v3, 0x2

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 3008
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopLocked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 3009
    const-string v0, "Launcher"

    const-string v1, "In this case, Option menu is not shown #2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 3111
    :goto_0
    return v0

    .line 3013
    :cond_0
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 3015
    const/4 v0, 0x1

    const v1, 0x7f08002d

    invoke-interface {p1, v0, v3, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02005b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x41

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 3017
    const v0, 0x7f08002e

    invoke-interface {p1, v4, v6, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020066

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x57

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 3019
    const v0, 0x7f08002f

    invoke-interface {p1, v4, v5, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020063

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x73

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 3021
    const/4 v0, 0x5

    const v1, 0x7f080030

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02005d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x4e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 3023
    const/16 v0, 0xd

    const v1, 0x7f080033

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x45

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 3026
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3027
    const/high16 v1, 0x1020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3031
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3034
    const/4 v1, 0x7

    const v2, 0x7f080032

    invoke-interface {p1, v4, v1, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020064

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v2, 0x50

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 3038
    const/16 v0, 0x8

    const v1, 0x7f080033

    invoke-interface {p1, v3, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3043
    const/16 v0, 0x12

    const v1, 0x7f08003a

    invoke-interface {p1, v3, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020061

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3065
    const/16 v0, 0xf

    const v1, 0x7f080039

    invoke-interface {p1, v3, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020065

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3074
    const/16 v0, 0x12

    const v1, 0x7f08003a

    invoke-interface {p1, v6, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020061

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3084
    const/16 v0, 0xf

    const v1, 0x7f080039

    invoke-interface {p1, v6, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020065

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3088
    const/16 v0, 0xb

    const v1, 0x7f080037

    invoke-interface {p1, v5, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020062

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3090
    const/16 v0, 0xc

    const v1, 0x7f080038

    invoke-interface {p1, v5, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02005c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3093
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3094
    const v1, 0x7f02005e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 3096
    const/16 v2, 0x10

    const v3, 0x7f08003f

    invoke-interface {p1, v5, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 3099
    const v1, 0x7f02005e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3100
    const/16 v1, 0x11

    const v2, 0x7f080040

    invoke-interface {p1, v5, v1, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 3106
    const/4 v0, 0x7

    const/16 v1, 0x16

    const v2, 0x7f0800a4

    invoke-interface {p1, v0, v1, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x45

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 3111
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method onDesktopItemsLoaded(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4355
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 4356
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/twlauncher/Launcher;->bindDesktopItems(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 4361
    :goto_0
    return-void

    .line 4358
    :cond_0
    const-string v0, "Launcher.LauncherModel"

    const-string v1, "onDesktopItemsLoaded() : DISCARD desktop items. Launcher destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 12

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v11, "Launcher"

    .line 2838
    const-string v7, "Launcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onDestroy() "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2840
    iput-boolean v10, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDestroyed:Z

    .line 2842
    invoke-super {p0}, Landroid/app/ActivityGroup;->onDestroy()V

    .line 2844
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    .line 2847
    :try_start_0
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;->stopListening()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2855
    :goto_0
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHostContext:Landroid/content/MutableContextWrapper;

    invoke-virtual {v7, v9}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V

    .line 2861
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v7

    if-ge v3, v7, :cond_2

    .line 2862
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v7, v3}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 2864
    .local v1, cl:Lcom/sec/android/app/twlauncher/CellLayout;
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v7

    sub-int v4, v7, v10

    .local v4, j:I
    :goto_2
    if-ltz v4, :cond_1

    .line 2865
    invoke-virtual {v1, v4}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2866
    .local v6, v:Landroid/view/View;
    instance-of v7, v6, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;

    if-eqz v7, :cond_0

    .line 2867
    move-object v0, v6

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->destroyLauncherReferences()V

    .line 2868
    invoke-virtual {v6, v9}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2869
    invoke-virtual {v1, v6}, Lcom/sec/android/app/twlauncher/CellLayout;->removeView(Landroid/view/View;)V

    .line 2864
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 2848
    .end local v1           #cl:Lcom/sec/android/app/twlauncher/CellLayout;
    .end local v3           #i:I
    .end local v4           #j:I
    .end local v6           #v:Landroid/view/View;
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 2849
    .local v2, ex:Ljava/lang/NullPointerException;
    const-string v7, "Launcher"

    const-string v7, "problem while stopping AppWidgetHost during Launcher destruction"

    invoke-static {v11, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2861
    .end local v2           #ex:Ljava/lang/NullPointerException;
    .restart local v1       #cl:Lcom/sec/android/app/twlauncher/CellLayout;
    .restart local v3       #i:I
    .restart local v4       #j:I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2874
    .end local v1           #cl:Lcom/sec/android/app/twlauncher/CellLayout;
    .end local v4           #j:I
    :cond_2
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v7

    invoke-virtual {v7}, Landroid/text/method/TextKeyListener;->release()V

    .line 2880
    sget-object v7, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/sec/android/app/twlauncher/LauncherModel;->setPkgModFlag(Z)V

    .line 2882
    sget-object v7, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->unbind()V

    .line 2883
    sget-object v7, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->abortLoaders()V

    .line 2888
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v7, v9}, Lcom/sec/android/app/twlauncher/MenuManager;->setAdapter(Lcom/sec/android/app/twlauncher/ApplicationsAdapter;)V

    .line 2889
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/MenuManager;->onDestroy()V

    .line 2891
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->unbind()V

    .line 2893
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 2894
    .local v5, resolver:Landroid/content/ContentResolver;
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v7}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2895
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v7}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2896
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBadgeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v7}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2897
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher;->mPowerSavingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v7}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2898
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher;->mApplicationsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2899
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2900
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBootCompleteIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2901
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher;->mExternalAppsAvailabilityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2902
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2903
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2907
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBadgeCountChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2908
    return-void
.end method

.method public onItemClick(Lcom/sec/android/app/twlauncher/ScrollMenu;IJ)V
    .locals 1
    .parameter "menu"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 7316
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddToWorkspaceMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    if-ne p1, v0, :cond_1

    .line 7317
    invoke-direct {p0, p2, p3, p4}, Lcom/sec/android/app/twlauncher/Launcher;->processAddToWorkspaceMenuSelection(IJ)V

    .line 7326
    :cond_0
    :goto_0
    return-void

    .line 7318
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpapersMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    if-ne p1, v0, :cond_2

    .line 7319
    invoke-direct {p0, p2, p3, p4}, Lcom/sec/android/app/twlauncher/Launcher;->processAddToWallpapersMenuSelection(IJ)V

    goto :goto_0

    .line 7320
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mShortcutMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    if-ne p1, v0, :cond_3

    .line 7321
    invoke-direct {p0, p2, p3, p4}, Lcom/sec/android/app/twlauncher/Launcher;->processShortcutMenuSelection(IJ)V

    goto :goto_0

    .line 7322
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    if-ne p1, v0, :cond_4

    .line 7323
    invoke-direct {p0, p2, p3, p4}, Lcom/sec/android/app/twlauncher/Launcher;->processAppShortcutMenuSelection(IJ)V

    goto :goto_0

    .line 7324
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    if-ne p1, v0, :cond_0

    .line 7325
    invoke-direct {p0, p2, p3, p4}, Lcom/sec/android/app/twlauncher/Launcher;->processFolderMenuSelection(IJ)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v6, 0x3e

    const/4 v5, 0x1

    .line 1675
    invoke-super {p0, p1, p2}, Landroid/app/ActivityGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 1677
    .local v1, handled:Z
    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->acceptFilter()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x42

    if-eq p1, v2, :cond_0

    if-eq p1, v6, :cond_0

    .line 1680
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, v3, v4, p1, p2}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 1682
    .local v0, gotKey:Z
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1690
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->onSearchRequested()Z

    move-result v2

    .line 1709
    .end local v0           #gotKey:Z
    :goto_0
    return v2

    .line 1695
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 1696
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->isDone:Z

    .line 1703
    :cond_1
    if-ne p1, v6, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->isDone:Z

    if-nez v2, :cond_2

    .line 1704
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->toggleVibrateMode()V

    .line 1705
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/Launcher;->isDone:Z

    move v2, v5

    .line 1706
    goto :goto_0

    :cond_2
    move v2, v1

    .line 1709
    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const-string v4, "IconDebug"

    .line 4848
    const-string v0, "IconDebug"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Launcher.java onLongClick mDesktopLocked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopLocked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4850
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopLocked:Z

    if-eqz v0, :cond_0

    move v0, v5

    .line 4894
    :goto_0
    return v0

    .line 4853
    :cond_0
    instance-of v0, p1, Lcom/sec/android/app/twlauncher/CellLayout;

    if-nez v0, :cond_7

    .line 4854
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 4857
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 4860
    if-nez v0, :cond_1

    .line 4861
    const-string v0, "IconDebug"

    const-string v0, "Launcher.java onLongClick cellInfo == null"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 4862
    goto :goto_0

    .line 4865
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->allowLongPress()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4866
    iget-object v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-nez v1, :cond_4

    .line 4867
    const-string v1, "IconDebug"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launcher.java onLongClick cellInfo.valid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->valid:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4868
    iget-object v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->vacantCells:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 4870
    const-string v0, "IconDebug"

    const-string v0, "Launcher.java onLongClick cellInfo.vacantCells.size()==0"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 4871
    goto :goto_0

    .line 4873
    :cond_2
    iget-boolean v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->valid:Z

    if-eqz v1, :cond_3

    .line 4875
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1, v5}, Lcom/sec/android/app/twlauncher/Workspace;->setAllowLongPress(Z)V

    .line 4876
    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->showAddToWorkspaceMenu(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    :cond_3
    :goto_2
    move v0, v3

    .line 4894
    goto :goto_0

    .line 4879
    :cond_4
    iget-object v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    instance-of v1, v1, Lcom/sec/android/app/twlauncher/Folder;

    if-nez v1, :cond_3

    .line 4881
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->showMotionDialog()Z

    move-result v1

    if-eqz v1, :cond_5

    move v0, v3

    .line 4882
    goto :goto_0

    .line 4885
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getAddWidgetDialog()Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->isActive()Z

    move-result v1

    if-nez v1, :cond_6

    .line 4888
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->deactivateAllScrollMenus()V

    .line 4890
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/Workspace;->startDrag(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    goto :goto_2

    :cond_7
    move-object v0, p1

    goto :goto_1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 7
    .parameter

    .prologue
    const/high16 v3, 0x40

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "className"

    const-string v2, "widgetInstall"

    .line 2578
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onNewIntent(Landroid/content/Intent;)V

    .line 2581
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2584
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->deactivateAllScrollMenus()V

    .line 2585
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeQuickViewMainMenu()V

    .line 2586
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeQuickViewWorkspace()V

    .line 2596
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsNewIntent:Z

    .line 2599
    const-string v0, "widgetInstall"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2600
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2601
    if-eqz v0, :cond_8

    .line 2602
    const-string v1, "widgetInstall"

    const-string v1, "widgetInstall"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2604
    const-string v1, "packageName"

    const-string v2, "packageName"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2606
    const-string v1, "className"

    const-string v1, "className"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move v0, v5

    .line 2612
    :goto_0
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/2addr v1, v3

    if-eq v1, v3, :cond_7

    .line 2614
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    .line 2615
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    .line 2618
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2619
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeQuickViewWorkspace()V

    .line 2628
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->isOpened()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2629
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeQuickViewMainMenu()V

    .line 2630
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2631
    invoke-direct {p0, v4}, Lcom/sec/android/app/twlauncher/Launcher;->closeDrawer(Z)V

    .line 2646
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    .line 2647
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2648
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2649
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2658
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->finishAppWidgetResize()V

    .line 2659
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeSystemDialogs()V

    .line 2661
    :cond_3
    return-void

    .line 2633
    :cond_4
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2634
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    .line 2635
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->discard()V

    goto :goto_1

    .line 2637
    :cond_5
    invoke-direct {p0, v4}, Lcom/sec/android/app/twlauncher/Launcher;->closeDrawer(Z)V

    goto :goto_1

    .line 2639
    :cond_6
    if-nez v0, :cond_1

    .line 2640
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->moveToDefaultScreen()V

    .line 2641
    sget v0, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN:I

    sput v0, Lcom/sec/android/app/twlauncher/Launcher;->sScreen:I

    .line 2642
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsMoveDefaultScreen:Z

    goto :goto_1

    .line 2652
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeQuickViewWorkspace()V

    .line 2653
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeQuickViewMainMenu()V

    .line 2654
    invoke-direct {p0, v4}, Lcom/sec/android/app/twlauncher/Launcher;->closeDrawer(Z)V

    .line 2655
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    goto :goto_2

    :cond_8
    move v0, v4

    goto/16 :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3301
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 3387
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 3303
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->addItems()V

    move v0, v2

    .line 3304
    goto :goto_0

    .line 3306
    :pswitch_2
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->showWallpaperMenu()V

    move v0, v2

    .line 3307
    goto :goto_0

    .line 3309
    :pswitch_3
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->onSearchRequested()Z

    move v0, v2

    .line 3310
    goto :goto_0

    .line 3312
    :pswitch_4
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->showNotifications()V

    move v0, v2

    .line 3313
    goto :goto_0

    :pswitch_5
    move v0, v2

    .line 3315
    goto :goto_0

    .line 3320
    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 3321
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->showDialog(I)V

    :goto_1
    move v0, v2

    .line 3328
    goto :goto_0

    .line 3323
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->isMenuEditDialogAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3324
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->showDialog(I)V

    .line 3326
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)Z

    goto :goto_1

    .line 3332
    :pswitch_7
    sget-boolean v0, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_LISTMODE:Z

    if-eqz v0, :cond_2

    .line 3333
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)Z

    :goto_2
    move v0, v2

    .line 3337
    goto :goto_0

    .line 3335
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)Z

    goto :goto_2

    .line 3339
    :pswitch_8
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)Z

    move v0, v2

    .line 3340
    goto :goto_0

    .line 3342
    :pswitch_9
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->menusave()Z

    move v0, v2

    .line 3343
    goto :goto_0

    .line 3345
    :pswitch_a
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->showDiscardMenuEdit()V

    move v0, v2

    .line 3346
    goto :goto_0

    .line 3348
    :pswitch_b
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewWorkspace()Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawOpenAnimation()V

    .line 3349
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->openQuickViewWorkspace()V

    move v0, v2

    .line 3350
    goto :goto_0

    .line 3352
    :pswitch_c
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->openQuickViewMainMenu()V

    move v0, v2

    .line 3353
    goto :goto_0

    .line 3356
    :pswitch_d
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->onShareAppRequested()V

    move v0, v2

    .line 3357
    goto :goto_0

    .line 3360
    :pswitch_e
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/LauncherManager;->emptyNewFolder(Z)V

    move v0, v2

    .line 3361
    goto :goto_0

    .line 3364
    :pswitch_f
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/LauncherManager;->emptyPageFolder(Z)V

    move v0, v2

    .line 3365
    goto/16 :goto_0

    .line 3367
    :pswitch_10
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->setSortMethod(I)V

    move v0, v2

    .line 3368
    goto/16 :goto_0

    .line 3371
    :pswitch_11
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->showDialog(I)V

    move v0, v2

    .line 3372
    goto/16 :goto_0

    .line 3376
    :pswitch_12
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewWorkspace()Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setMode(Z)V

    move v0, v2

    .line 3377
    goto/16 :goto_0

    .line 3381
    :pswitch_13
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->showDialog(I)V

    move v0, v2

    .line 3382
    goto/16 :goto_0

    .line 3301
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_13
        :pswitch_0
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    const/4 v1, 0x0

    .line 3294
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 3295
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/sec/android/app/twlauncher/LauncherManager;->setMenuItem(Landroid/view/MenuItem;Landroid/view/MenuItem;)V

    .line 3297
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 1602
    invoke-super {p0}, Landroid/app/ActivityGroup;->onPause()V

    .line 1604
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mGLSurfaceViewGroup:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->suspendDrawingUntilResume()V

    .line 1606
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBindSamsungAppWidgetExternal:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1608
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->isSearchManagerVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1609
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->stopSearch()V

    .line 1612
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mExec:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    .line 1613
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mExec:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1614
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mExec:Ljava/util/concurrent/ExecutorService;

    .line 1617
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    sget v1, Lcom/sec/android/app/twlauncher/Launcher;->sScreen:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->pauseScreen(I)V

    .line 1619
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/DragLayer;->cancelDrag()V

    .line 1621
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->saveScreenInfo()V

    .line 1623
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsActive:Z

    .line 1625
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    .line 1628
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->cancelDrag()V

    .line 1629
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->cancelDrag()V

    .line 1648
    new-instance v0, Landroid/content/Intent;

    const-string v1, "sec.android.intent.action.HOME_PAUSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    .line 1649
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5158
    sparse-switch p1, :sswitch_data_0

    .line 5175
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 5163
    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    if-eqz v0, :cond_0

    .line 5164
    const v0, 0x7f060045

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 5165
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/FolderInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 5166
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 5167
    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    goto :goto_0

    .line 5171
    :sswitch_2
    const v0, 0x7f060037

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/CheckBox;

    .line 5172
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 5158
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x7 -> :sswitch_1
        0xb -> :sswitch_2
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x4

    const/4 v2, 0x2

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3172
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 3176
    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mOptionsMenuState:I

    if-eqz v0, :cond_0

    .line 3177
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In this case, Option menu is not shown #3 mOptionsMenuState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mOptionsMenuState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3178
    iput v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mOptionsMenuState:I

    move v0, v3

    .line 3289
    :goto_0
    return v0

    .line 3187
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetPreview:Lcom/sec/android/app/twlauncher/WidgetPreview;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/WidgetPreview;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v3

    .line 3188
    goto :goto_0

    .line 3192
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->isOpened()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3195
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getAnimateStatus()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v3

    .line 3196
    goto :goto_0

    :cond_3
    move v0, v3

    .line 3192
    goto :goto_0

    .line 3198
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3199
    invoke-interface {p1, v3, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 3200
    invoke-interface {p1, v4, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 3201
    const/4 v0, 0x5

    invoke-interface {p1, v0, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 3203
    const/4 v0, 0x7

    invoke-interface {p1, v0, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 3212
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v0

    if-nez v0, :cond_8

    .line 3213
    invoke-interface {p1, v2, v4}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 3214
    invoke-interface {p1, v5, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 3215
    invoke-interface {p1, v6, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 3232
    :cond_5
    :goto_1
    invoke-static {}, Lcom/sec/android/app/twlauncher/Launcher;->getModel()Lcom/sec/android/app/twlauncher/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->isApplicationsLoaded()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3233
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3238
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v0

    if-ne v0, v5, :cond_c

    .line 3241
    :cond_6
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_7
    :goto_3
    move v0, v4

    .line 3289
    goto :goto_0

    .line 3217
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v0

    if-eq v0, v4, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v0

    if-ne v0, v5, :cond_a

    .line 3219
    :cond_9
    invoke-interface {p1, v2, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 3220
    invoke-interface {p1, v5, v4}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 3221
    invoke-interface {p1, v6, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto :goto_1

    .line 3222
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 3223
    invoke-interface {p1, v2, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 3224
    invoke-interface {p1, v5, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 3225
    invoke-interface {p1, v6, v4}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 3226
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v0

    const/16 v1, 0x10

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v2, 0x11

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/LauncherManager;->setMenuItem(Landroid/view/MenuItem;Landroid/view/MenuItem;)V

    goto :goto_1

    .line 3235
    :cond_b
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 3243
    :cond_c
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    .line 3247
    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3249
    invoke-interface {p1, v3, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 3250
    invoke-interface {p1, v4, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 3251
    invoke-interface {p1, v2, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 3252
    invoke-interface {p1, v5, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 3253
    invoke-interface {p1, v6, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 3254
    const/4 v0, 0x5

    invoke-interface {p1, v0, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 3255
    const/4 v0, 0x7

    invoke-interface {p1, v0, v4}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 3257
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getSetHomeMenu()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7

    .line 3258
    const/4 v0, 0x7

    invoke-interface {p1, v0, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto/16 :goto_3

    .line 3265
    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->findAllVacantCellsFromModel()Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v0

    .line 3266
    if-nez v0, :cond_f

    .line 3267
    const-string v0, "Launcher"

    const-string v1, "Unable to find a vacant cell from the model"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 3269
    :cond_f
    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/twlauncher/Launcher;->findSingleSlotAnywhere(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)I

    move-result v0

    .line 3270
    const/4 v1, -0x1

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    sget v1, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    if-ne v0, v1, :cond_10

    .line 3271
    invoke-interface {p1, v4, v3}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 3276
    :goto_4
    invoke-interface {p1, v3, v4}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 3277
    invoke-interface {p1, v4, v4}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 3278
    invoke-interface {p1, v2, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 3279
    invoke-interface {p1, v5, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 3280
    invoke-interface {p1, v6, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 3281
    const/4 v0, 0x5

    invoke-interface {p1, v0, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 3283
    const/4 v0, 0x7

    invoke-interface {p1, v0, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 3285
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->finishAppWidgetResize()V

    goto/16 :goto_3

    .line 3273
    :cond_10
    invoke-interface {p1, v4, v4}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto :goto_4
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 1393
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->ignoreGLPauseResume()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1394
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mGLSurfaceViewGroup:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->onResume()V

    .line 1397
    :cond_0
    invoke-super {p0}, Landroid/app/ActivityGroup;->onRestart()V

    .line 1398
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 7
    .parameter

    .prologue
    const/4 v3, -0x1

    const-string v5, "android:views"

    const-string v4, "android:focusedViewId"

    .line 2709
    const-string v0, "android:viewHierarchyState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 2710
    const/4 v1, 0x0

    .line 2713
    if-eqz v0, :cond_1

    .line 2714
    const-string v1, "android:views"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v1

    .line 2715
    const-string v2, "android:views"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2716
    const-string v2, "android:focusedViewId"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 2717
    const-string v3, "android:focusedViewId"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    move v6, v2

    move-object v2, v1

    move v1, v6

    .line 2720
    :goto_0
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 2722
    if-eqz v0, :cond_0

    .line 2723
    const-string v3, "android:views"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 2724
    const-string v2, "android:focusedViewId"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2725
    const-string v1, "android:Panels"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2728
    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    .line 2729
    return-void

    :cond_1
    move-object v2, v1

    move v1, v3

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1428
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume(). mIsNewIntent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsNewIntent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " screenOff: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsScreenOff:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->overridePendingTransitionForOpaqueWindowEnter()V

    .line 1434
    invoke-super {p0}, Landroid/app/ActivityGroup;->onResume()V

    .line 1435
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mGLSurfaceViewGroup:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->stopSuspendingDrawing()V

    .line 1437
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->updateWindowTransparency()V

    .line 1439
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsActive:Z

    .line 1441
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mExec:Ljava/util/concurrent/ExecutorService;

    .line 1443
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRestoring:Z

    if-eqz v0, :cond_5

    .line 1444
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->startLoaders()V

    .line 1453
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/SamsungUtils;->broadcastStkIntent(Landroid/content/Context;)V

    .line 1467
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/DragLayer;->cancelDrag()V

    .line 1469
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->resume()V

    .line 1470
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->cancelOutAnimIfRunning()Z

    .line 1471
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsNewIntent:Z

    if-eqz v0, :cond_6

    .line 1472
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsMoveDefaultScreen:Z

    if-nez v0, :cond_1

    .line 1473
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    sget v1, Lcom/sec/android/app/twlauncher/Launcher;->sScreen:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->resumeScreen(I)V

    .line 1479
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1480
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->cancelDrag()V

    .line 1482
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1483
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->cancelDrag()V

    .line 1486
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->setWallpaperDimension()V

    .line 1488
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsNewIntent:Z

    .line 1489
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsMoveDefaultScreen:Z

    .line 1493
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBindSamsungAppWidgetExternal:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1495
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsScreenOff:Z

    if-eqz v0, :cond_4

    .line 1496
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsScreenOff:Z

    .line 1510
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "sec.android.intent.action.HOME_RESUME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    .line 1511
    return-void

    .line 1446
    :cond_5
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsChangedBadge:Z

    if-eqz v0, :cond_0

    .line 1447
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRunBadgeChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1448
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRunBadgeChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1475
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    sget v1, Lcom/sec/android/app/twlauncher/Launcher;->sScreen:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->resume(I)V

    .line 1476
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    sget v1, Lcom/sec/android/app/twlauncher/Launcher;->sScreen:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->resumeScreen(I)V

    goto :goto_1
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1654
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBinder:Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;

    if-eqz v0, :cond_0

    .line 1655
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBinder:Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->mTerminate:Z

    .line 1661
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 19
    .parameter "outState"

    .prologue
    .line 2733
    invoke-super/range {p0 .. p1}, Landroid/app/ActivityGroup;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2735
    const-string v16, "launcher.current_screen"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v17

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/twlauncher/MenuManager;->getCurrentScreenIndex()I

    move-result v11

    .line 2739
    .local v11, menuScreen:I
    const-string v16, "launcher.delete_application"

    sget-object v17, Lcom/sec/android/app/twlauncher/Launcher;->mUninstallPackageName:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2740
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v12

    .line 2741
    .local v12, mmMode:I
    const-string v16, "launcher.menu_mode"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2743
    const-string v16, "launcher.menu_current_screen"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2745
    const-string v16, "launcher.menu_screen_count"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v17

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2746
    const-string v16, "launcher.active_menu_id"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mActiveMenuId:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2749
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    move/from16 v16, v0

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_1

    .line 2750
    const-string v16, "launcher.quick_navigation"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2751
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteIndex:I

    move/from16 v16, v0

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_0

    .line 2752
    const-string v16, "launcher.delete_index"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2770
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/twlauncher/Workspace;->getOpenFolders()Ljava/util/ArrayList;

    move-result-object v6

    .line 2771
    .local v6, folders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/Folder;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-lez v16, :cond_6

    .line 2772
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 2773
    .local v5, count:I
    new-array v8, v5, [J

    .line 2774
    .local v8, ids:[J
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, v5, :cond_5

    .line 2775
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/twlauncher/Folder;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Folder;->getInfo()Lcom/sec/android/app/twlauncher/FolderInfo;

    move-result-object v9

    .line 2776
    .local v9, info:Lcom/sec/android/app/twlauncher/FolderInfo;
    move-object v0, v9

    iget-wide v0, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    move-wide/from16 v16, v0

    aput-wide v16, v8, v7

    .line 2774
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2754
    .end local v5           #count:I
    .end local v6           #folders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/Folder;>;"
    .end local v7           #i:I
    .end local v8           #ids:[J
    .end local v9           #info:Lcom/sec/android/app/twlauncher/FolderInfo;
    :cond_0
    const-string v16, "launcher.delete_index"

    const/16 v17, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 2756
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v16

    if-eqz v16, :cond_3

    .line 2757
    const-string v16, "launcher.quick_navigation"

    const/16 v17, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2758
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mIsDeletePopup:Z

    move/from16 v16, v0

    if-eqz v16, :cond_2

    .line 2759
    const-string v16, "launcher.delete_index"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getDeleteIndex()I

    move-result v17

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 2762
    :cond_2
    const-string v16, "launcher.delete_index"

    const/16 v17, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 2764
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->isOpened()Z

    move-result v16

    if-eqz v16, :cond_4

    .line 2765
    const-string v16, "launcher.quick_navigation"

    const/16 v17, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 2767
    :cond_4
    const-string v16, "launcher.quick_navigation"

    const/16 v17, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 2778
    .restart local v5       #count:I
    .restart local v6       #folders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/Folder;>;"
    .restart local v7       #i:I
    .restart local v8       #ids:[J
    :cond_5
    const-string v16, "launcher.user_folder"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 2786
    .end local v5           #count:I
    .end local v7           #i:I
    .end local v8           #ids:[J
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v16

    if-eqz v16, :cond_7

    .line 2787
    const-string v16, "launcher.all_apps_folder"

    const/16 v17, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2790
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-object/from16 v16, v0

    if-eqz v16, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->valid:Z

    move/from16 v16, v0

    if-eqz v16, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mWaitingForResult:Z

    move/from16 v16, v0

    if-eqz v16, :cond_8

    .line 2791
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-object v4, v0

    .line 2792
    .local v4, addItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    move-object/from16 v16, v0

    move-object v0, v4

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v10

    .line 2794
    .local v10, layout:Lcom/sec/android/app/twlauncher/CellLayout;
    if-nez v10, :cond_b

    .line 2795
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->valid:Z

    .line 2809
    .end local v4           #addItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    .end local v10           #layout:Lcom/sec/android/app/twlauncher/CellLayout;
    :cond_8
    :goto_2
    sget-object v16, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/twlauncher/LauncherModel;->getMenuManagerUserFolderModel()Lcom/sec/android/app/twlauncher/UserFolderModel;

    move-result-object v13

    .line 2810
    .local v13, model:Lcom/sec/android/app/twlauncher/UserFolderModel;
    invoke-virtual {v13}, Lcom/sec/android/app/twlauncher/UserFolderModel;->getSpecialFolders()Ljava/util/Hashtable;

    move-result-object v15

    .line 2811
    .local v15, special:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Lcom/sec/android/app/twlauncher/UserFolderInfo;>;"
    const-string v16, "launcher.remove_folder_id"

    invoke-virtual/range {v15 .. v16}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2812
    const-string v16, "launcher.rename_folder_id"

    invoke-virtual/range {v15 .. v16}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    move-object/from16 v16, v0

    if-eqz v16, :cond_9

    .line 2815
    const-string v16, "launcher.rename_folder"

    const/16 v17, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/twlauncher/FolderInfo;->getOwner()I

    move-result v14

    .line 2817
    .local v14, owner:I
    const-string v16, "launcher.rename_folder_owner"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2818
    packed-switch v14, :pswitch_data_0

    .line 2830
    .end local v14           #owner:I
    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderToRemove:Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-object/from16 v16, v0

    if-eqz v16, :cond_a

    .line 2831
    const-string v16, "launcher.remove_folder"

    const/16 v17, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2832
    const-string v16, "launcher.remove_folder_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderToRemove:Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2834
    :cond_a
    return-void

    .line 2797
    .end local v13           #model:Lcom/sec/android/app/twlauncher/UserFolderModel;
    .end local v15           #special:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Lcom/sec/android/app/twlauncher/UserFolderInfo;>;"
    .restart local v4       #addItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    .restart local v10       #layout:Lcom/sec/android/app/twlauncher/CellLayout;
    :cond_b
    const-string v16, "launcher.add_screen"

    move-object v0, v4

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2798
    const-string v16, "launcher.add_cellX"

    move-object v0, v4

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2799
    const-string v16, "launcher.add_cellY"

    move-object v0, v4

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2800
    const-string v16, "launcher.add_spanX"

    move-object v0, v4

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanX:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2801
    const-string v16, "launcher.add_spanY"

    move-object v0, v4

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanY:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2802
    const-string v16, "launcher.add_countX"

    invoke-virtual {v10}, Lcom/sec/android/app/twlauncher/CellLayout;->getCountX()I

    move-result v17

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2803
    const-string v16, "launcher.add_countY"

    invoke-virtual {v10}, Lcom/sec/android/app/twlauncher/CellLayout;->getCountY()I

    move-result v17

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2804
    const-string v16, "launcher.add_occupied_cells"

    invoke-virtual {v10}, Lcom/sec/android/app/twlauncher/CellLayout;->getOccupiedCells()[Z

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    goto/16 :goto_2

    .line 2820
    .end local v4           #addItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    .end local v10           #layout:Lcom/sec/android/app/twlauncher/CellLayout;
    .restart local v13       #model:Lcom/sec/android/app/twlauncher/UserFolderModel;
    .restart local v14       #owner:I
    .restart local v15       #special:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Lcom/sec/android/app/twlauncher/UserFolderInfo;>;"
    :pswitch_0
    const-string v16, "launcher.rename_folder_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-wide/from16 v2, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_3

    .line 2823
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move/from16 v16, v0

    if-eqz v16, :cond_9

    .line 2824
    const-string v16, "launcher.rename_folder_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    move-object v4, v0

    check-cast v4, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2818
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onSearchRequested()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3397
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0, v2, v1}, Lcom/sec/android/app/twlauncher/Launcher;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 3398
    return v1
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 1403
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->ignoreGLPauseResume()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1404
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mGLSurfaceViewGroup:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->onPause()V

    .line 1407
    :cond_0
    invoke-super {p0}, Landroid/app/ActivityGroup;->onStop()V

    .line 1408
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter

    .prologue
    .line 7081
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7083
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onWindowFocusChanged(Z)V

    .line 7085
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->updateWallpaperOffset()V

    .line 7087
    if-eqz p1, :cond_0

    .line 7088
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->updateWindowTransparency()V

    .line 7093
    :goto_0
    return-void

    .line 7090
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->cancelDrag()V

    .line 7091
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->cancelDrag()V

    goto :goto_0
.end method

.method openQuickViewMainMenu()V
    .locals 2

    .prologue
    .line 4964
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4984
    :goto_0
    return-void

    .line 4967
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4969
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 4972
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setVisibility(I)V

    .line 4973
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->setVisibility(I)V

    .line 4974
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->setBackgroundNotification(I)V

    .line 4975
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->invalidate()V

    .line 4976
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuScreenCount:I

    if-lez v0, :cond_2

    .line 4977
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    iget v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuScreenCount:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->initScreen(I)V

    .line 4982
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeOptionsMenu()V

    .line 4983
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->open()V

    goto :goto_0

    .line 4979
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->initScreen(I)V

    goto :goto_1
.end method

.method openQuickViewWorkspace()V
    .locals 5

    .prologue
    .line 4906
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->deactivateAllScrollMenus()V

    .line 4908
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4910
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 4913
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setVisibility(I)V

    .line 4915
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->setVisibility(I)V

    .line 4916
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->invalidate()V

    .line 4918
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->initScreen(I)V

    .line 4920
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeOptionsMenu()V

    .line 4921
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->open()V

    .line 4923
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    .line 4924
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/android/app/twlauncher/Launcher$7;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/twlauncher/Launcher$7;-><init>(Lcom/sec/android/app/twlauncher/Launcher;I)V

    const-wide/16 v3, 0x1c2

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4929
    return-void
.end method

.method overridePendingTransitionForOpaqueWindowEnter()V
    .locals 2

    .prologue
    .line 7166
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsOpaqueWindow:Z

    if-eqz v0, :cond_0

    .line 7167
    const v0, 0x7f04000a

    const v1, 0x7f04000b

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->overridePendingTransition(II)V

    .line 7169
    :cond_0
    return-void
.end method

.method overridePendingTransitionForOpaqueWindowExit()V
    .locals 2

    .prologue
    .line 7172
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsOpaqueWindow:Z

    if-eqz v0, :cond_0

    .line 7173
    const v0, 0x7f040008

    const v1, 0x7f040009

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->overridePendingTransition(II)V

    .line 7175
    :cond_0
    return-void
.end method

.method previewAddSamsungWidget()V
    .locals 7

    .prologue
    .line 3812
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    if-nez v0, :cond_0

    .line 3813
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    .line 3824
    :goto_0
    return-void

    .line 3817
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    .line 3819
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 3820
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 3822
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetPreview:Lcom/sec/android/app/twlauncher/WidgetPreview;

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetView:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    iget v6, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    mul-int/2addr v1, v6

    iget v0, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    mul-int/2addr v0, v2

    invoke-direct {v5, v1, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/twlauncher/WidgetPreview;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method previewAddSearch()V
    .locals 7

    .prologue
    .line 3625
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidget:Lcom/sec/android/app/twlauncher/Widget;

    if-nez v0, :cond_0

    .line 3626
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    .line 3641
    :goto_0
    return-void

    .line 3630
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidget:Lcom/sec/android/app/twlauncher/Widget;

    .line 3631
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mInflater:Landroid/view/LayoutInflater;

    iget v2, v1, Lcom/sec/android/app/twlauncher/Widget;->layoutResource:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 3632
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3633
    const v0, 0x7f06004e

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/Search;

    .line 3634
    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/Search;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 3636
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b0006

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 3637
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0007

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 3639
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetPreview:Lcom/sec/android/app/twlauncher/WidgetPreview;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    iget v6, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    mul-int/2addr v0, v6

    iget v1, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    mul-int/2addr v1, v3

    invoke-direct {v5, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v2, v5}, Lcom/sec/android/app/twlauncher/WidgetPreview;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method removePage()V
    .locals 1

    .prologue
    .line 6315
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsDeletePopup:Z

    .line 6316
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->removeScreen()V

    .line 6318
    return-void
.end method

.method public removeVLPPackage(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 5995
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 5999
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 6000
    if-eqz v0, :cond_a

    .line 6002
    const/4 v1, 0x0

    .line 6003
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 6004
    if-eqz v0, :cond_b

    .line 6006
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 6009
    :goto_0
    const-string v1, "com.zynga.words"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "com.zynga.words.menu.GameListActivity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_0
    const-string v1, "com.wavemarket.waplauncher"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    const-string v1, "com.wavemarket.finder.mobile.SignInActivity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_1
    const-string v1, "com.mtag.att.codescanner"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    const-string v1, "com.mtag.att.codescanner.Mobiletag"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_2
    const-string v1, "com.att.myWireless"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    const-string v1, "com.att.myWireless.activity.login.SplashScreenActivity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_3
    const-string v1, "com.mobitv.client.tv"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    const-string v1, "com.mobitv.client.tv.MobiTVPlayer"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_4
    const-string v1, "com.telenav.app.android.cingular"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    const-string v1, "com.telenav.app.android.cingular.TeleNav"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_5
    const-string v1, "com.yellowpages.android.ypmobile"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    const-string v1, "com.yellowpages.android.ypmobile.YPM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_6
    const-string v1, "com.sdgtl.mediahub.dla.att"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz v0, :cond_7

    const-string v1, "com.sdgtl.mediahub.dla.att.Main"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    const-string v1, "com.att.featuredapps.handset"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    if-eqz v0, :cond_9

    const-string v1, "com.att.featuredapps.handset.AttFeaturedAppsHandset"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 6029
    :cond_8
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->removeShortcutsForPackage(Ljava/lang/String;)V

    .line 6031
    :cond_9
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "class name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6040
    :cond_a
    :goto_1
    return-void

    .line 6036
    :catch_0
    move-exception v0

    goto :goto_1

    :cond_b
    move-object v0, v1

    goto/16 :goto_0
.end method

.method saveMenuMode(I)V
    .locals 4
    .parameter "mode"

    .prologue
    .line 6737
    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveMenuMode mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6738
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 6739
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "menu"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 6740
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 6741
    return-void
.end method

.method public saveScreenInfo()V
    .locals 3

    .prologue
    .line 6433
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 6434
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "screencount"

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 6435
    const-string v1, "currentscreen"

    sget v2, Lcom/sec/android/app/twlauncher/Launcher;->sScreen:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 6438
    const-string v1, "defaultscreen"

    sget v2, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 6440
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 6441
    return-void
.end method

.method public sendWidgetResizeIntent(IILandroid/content/ComponentName;I)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4528
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4529
    const-string v1, "com.sec.android.widgetapp.APPWIDGET_RESIZE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4530
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4531
    const-string v1, "widgetspanx"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4532
    const-string v1, "widgetspany"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4533
    const-string v1, "widgetId"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4534
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    .line 4535
    return-void
.end method

.method public setBackgroundNotification(I)V
    .locals 1
    .parameter

    .prologue
    .line 7070
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 7071
    return-void
.end method

.method setWindowOpaque()V
    .locals 2

    .prologue
    const-string v1, "Launcher"

    .line 7153
    const-string v0, "Launcher"

    const-string v0, "setWindowOpaque()"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7154
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 7155
    if-eqz v0, :cond_0

    .line 7156
    const/high16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 7157
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 7158
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7162
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsOpaqueWindow:Z

    .line 7163
    return-void

    .line 7160
    :cond_0
    const-string v0, "Launcher"

    const-string v0, "Failed to retrieve window from launcher"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method setWindowTranslucent()V
    .locals 2

    .prologue
    const-string v1, "Launcher"

    .line 7140
    const-string v0, "Launcher"

    const-string v0, "setWindowTranslucent()"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7141
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 7142
    if-eqz v0, :cond_0

    .line 7143
    const/high16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 7144
    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 7145
    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 7149
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsOpaqueWindow:Z

    .line 7150
    return-void

    .line 7147
    :cond_0
    const-string v0, "Launcher"

    const-string v0, "Failed to retrieve window from launcher"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method showCreateFolderDialog(Lcom/sec/android/app/twlauncher/FolderInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 5178
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    .line 5179
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->showDialog(I)V

    .line 5180
    return-void
.end method

.method public showDeferredOptionsMenu()V
    .locals 2

    .prologue
    .line 7482
    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mOptionsMenuState:I

    .line 7483
    .local v0, optionsMenuState:I
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mOptionsMenuState:I

    .line 7484
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 7485
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->openOptionsMenu()V

    .line 7486
    :cond_0
    return-void
.end method

.method showDeleteApplication(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 6304
    sput-object p1, Lcom/sec/android/app/twlauncher/Launcher;->mUninstallPackageName:Ljava/lang/String;

    .line 6305
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->showDialog(I)V

    .line 6306
    return-void
.end method

.method showDeleteWorkScreen()V
    .locals 1

    .prologue
    .line 6327
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsDeletePopup:Z

    .line 6328
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->showDialog(I)V

    .line 6329
    return-void
.end method

.method showDiscardMenuEdit()V
    .locals 1

    .prologue
    .line 6300
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->showDialog(I)V

    .line 6301
    return-void
.end method

.method showMMRemoveFolder(Lcom/sec/android/app/twlauncher/UserFolderInfo;)V
    .locals 1
    .parameter "aFolderToRemove"

    .prologue
    .line 6309
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderToRemove:Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 6310
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->showDialog(I)V

    .line 6311
    return-void
.end method

.method protected showMotionDialog()Z
    .locals 1

    .prologue
    .line 7503
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->isMotionDialogAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7504
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->isMotionSettingOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7505
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->showDialog(I)V

    .line 7509
    :goto_0
    const/4 v0, 0x1

    .line 7511
    :goto_1
    return v0

    .line 7507
    :cond_0
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->showDialog(I)V

    goto :goto_0

    .line 7511
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method showRenameFolderDialog(Lcom/sec/android/app/twlauncher/FolderInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 5183
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    .line 5184
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->showDialog(I)V

    .line 5185
    return-void
.end method

.method showSearchDialog(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 7
    .parameter "initialQuery"
    .parameter "selectInitialQuery"
    .parameter "appSearchData"
    .parameter "globalSearch"

    .prologue
    .line 2954
    if-nez p1, :cond_0

    .line 2956
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getTypedText()Ljava/lang/String;

    move-result-object p1

    .line 2957
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->clearTypedText()V

    .line 2964
    :cond_0
    const-string v1, "search"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 2966
    .local v0, searchManager:Landroid/app/SearchManager;
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->findSearchWidgetOnCurrentScreen()Lcom/sec/android/app/twlauncher/Search;

    move-result-object v6

    .line 2967
    .local v6, searchWidget:Lcom/sec/android/app/twlauncher/Search;
    if-eqz v6, :cond_1

    .line 2971
    new-instance v1, Lcom/sec/android/app/twlauncher/Launcher$5;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/twlauncher/Launcher$5;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Landroid/app/SearchManager;)V

    invoke-virtual {v0, v1}, Landroid/app/SearchManager;->setOnCancelListener(Landroid/app/SearchManager$OnCancelListener;)V

    .line 2979
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V

    .line 2981
    return-void
.end method

.method showWidgetMessage(Z)V
    .locals 4
    .parameter

    .prologue
    const v3, 0x7f080022

    const v2, 0x7f080011

    const/4 v1, 0x0

    .line 6754
    if-eqz p1, :cond_1

    .line 6755
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 6756
    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    .line 6767
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 6768
    return-void

    .line 6758
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6761
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_2

    .line 6762
    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    goto :goto_0

    .line 6764
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setText(I)V

    goto :goto_0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 2912
    if-ltz p2, :cond_0

    .line 2913
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWaitingForResult:Z

    .line 2914
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/ActivityGroup;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2916
    return-void
.end method

.method startActivitySafely(Landroid/content/Intent;)V
    .locals 8
    .parameter

    .prologue
    const v6, 0x7f080008

    const/4 v5, 0x0

    const-string v0, "phone"

    const-string v7, "Launcher"

    .line 4691
    if-nez p1, :cond_1

    .line 4752
    :cond_0
    :goto_0
    return-void

    .line 4694
    :cond_1
    const/high16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4697
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4699
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDataConnChecker:Lcom/sec/android/app/twlauncher/DataConnChecker;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/DataConnChecker;->checkDataConnectionApp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4706
    :cond_2
    const/4 v0, 0x1

    const/16 v1, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/SamsungUtils;->acquireDVFSlock(II)V

    .line 4711
    const-string v0, "com.android.contacts"

    .line 4712
    const-string v1, "com.sec.android.app.contacts.DialerEntryActivity"
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3

    .line 4715
    :try_start_1
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 4717
    if-eqz v2, :cond_3

    .line 4718
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v2

    .line 4722
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 4724
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 4725
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 4726
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 4727
    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    .line 4728
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v0

    .line 4730
    :try_start_3
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->showCallScreen()Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 4731
    :catch_0
    move-exception v0

    .line 4732
    :try_start_4
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 4744
    :catch_1
    move-exception v0

    .line 4745
    invoke-static {p0, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 4719
    :catch_2
    move-exception v2

    .line 4720
    :try_start_5
    const-string v3, "Launcher"

    const-string v4, "phone.isOffhook() failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    move v2, v5

    goto :goto_1

    .line 4735
    :cond_4
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 4736
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->overridePendingTransitionForOpaqueWindowExit()V
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0

    .line 4746
    :catch_3
    move-exception v0

    .line 4747
    invoke-static {p0, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 4748
    const-string v1, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launcher does not have the permission to launch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Make sure to create a MAIN intent-filter for the corresponding activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "or use the exported attribute for this activity."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 4739
    :cond_5
    :try_start_6
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 4740
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->overridePendingTransitionForOpaqueWindowExit()V
    :try_end_6
    .catch Landroid/content/ActivityNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 3
    .parameter "initialQuery"
    .parameter "selectInitialQuery"
    .parameter "appSearchData"
    .parameter "globalSearch"

    .prologue
    .line 2922
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/android/app/twlauncher/Launcher$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/twlauncher/Launcher$4;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2936
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->findSearchWidgetOnCurrentScreen()Lcom/sec/android/app/twlauncher/Search;

    move-result-object v0

    .line 2937
    .local v0, searchWidget:Lcom/sec/android/app/twlauncher/Search;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 2938
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/app/twlauncher/Launcher;->showSearchDialog(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 2944
    :goto_0
    return-void

    .line 2940
    :cond_1
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/android/app/twlauncher/Search;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 2942
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getTypedText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Search;->setQuery(Ljava/lang/String;)V

    goto :goto_0
.end method

.method stopSearch()V
    .locals 3

    .prologue
    .line 2988
    const-string v2, "search"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 2989
    .local v0, searchManager:Landroid/app/SearchManager;
    invoke-virtual {v0}, Landroid/app/SearchManager;->stopSearch()V

    .line 2991
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->findSearchWidgetOnCurrentScreen()Lcom/sec/android/app/twlauncher/Search;

    move-result-object v1

    .line 2992
    .local v1, searchWidget:Lcom/sec/android/app/twlauncher/Search;
    if-eqz v1, :cond_0

    .line 2993
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/Search;->stopSearch(Z)V

    .line 2995
    :cond_0
    return-void
.end method

.method public uninstallPackage(Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"

    .prologue
    .line 6338
    sput-object p1, Lcom/sec/android/app/twlauncher/Launcher;->mUninstallPackageName:Ljava/lang/String;

    .line 6339
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->uninstallPackage()Z

    move-result v0

    return v0
.end method

.method updateWindowTransparency()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 7104
    iget-boolean v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mForce16BitWindow:Z

    if-nez v3, :cond_0

    .line 7133
    :goto_0
    return-void

    .line 7111
    :cond_0
    const-string v3, "wallpaper"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/WallpaperManager;

    .line 7113
    .local v2, wp:Landroid/app/WallpaperManager;
    invoke-virtual {v2}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v1

    .line 7115
    .local v1, wi:Landroid/app/WallpaperInfo;
    if-eqz v1, :cond_1

    const/4 v3, 0x1

    move v0, v3

    .line 7117
    .local v0, usingLiveWallpaper:Z
    :goto_1
    if-eqz v0, :cond_2

    .line 7118
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->setWindowTranslucent()V

    .line 7119
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperCanvasView:Lcom/sec/android/app/twlauncher/WallpaperCanvasView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/twlauncher/WallpaperCanvasView;->setVisibility(I)V

    .line 7120
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperImageDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .end local v0           #usingLiveWallpaper:Z
    :cond_1
    move v0, v4

    .line 7115
    goto :goto_1

    .line 7124
    .restart local v0       #usingLiveWallpaper:Z
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->setWindowOpaque()V

    .line 7125
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperCanvasView:Lcom/sec/android/app/twlauncher/WallpaperCanvasView;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/twlauncher/WallpaperCanvasView;->setVisibility(I)V

    .line 7126
    invoke-virtual {v2}, Landroid/app/WallpaperManager;->getFastDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 7129
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->makeBitmapMenuWallpaper()V

    goto :goto_0
.end method

.method updateWorkspaceBadge()V
    .locals 10

    .prologue
    .line 4325
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v8

    .line 4326
    .local v8, wcount:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v8, :cond_3

    .line 4327
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v9, v4}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v3

    .line 4328
    .local v3, child:Lcom/sec/android/app/twlauncher/CellLayout;
    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v2

    .line 4329
    .local v2, cellCount:I
    const/4 v5, 0x0

    .local v5, j:I
    :goto_1
    if-ge v5, v2, :cond_2

    .line 4330
    invoke-virtual {v3, v5}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4331
    .local v1, cell:Landroid/view/View;
    instance-of v9, v1, Lcom/sec/android/app/twlauncher/UserFolder;

    if-eqz v9, :cond_1

    .line 4332
    move-object v0, v1

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolder;

    move-object v7, v0

    .line 4333
    .local v7, uf:Lcom/sec/android/app/twlauncher/UserFolder;
    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/UserFolder;->notifyDataSetChanged()V

    .line 4329
    .end local v7           #uf:Lcom/sec/android/app/twlauncher/UserFolder;
    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 4337
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    .line 4338
    .local v6, tag:Ljava/lang/Object;
    if-eqz v6, :cond_0

    instance-of v9, v6, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v9, :cond_0

    .line 4339
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 4342
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 4343
    instance-of v9, v6, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v9, :cond_0

    .line 4344
    check-cast v6, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .end local v6           #tag:Ljava/lang/Object;
    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->updateBadgeCount()I

    goto :goto_2

    .line 4349
    .end local v1           #cell:Landroid/view/View;
    :cond_2
    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/CellLayout;->invalidate()V

    .line 4326
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4351
    .end local v2           #cellCount:I
    .end local v3           #child:Lcom/sec/android/app/twlauncher/CellLayout;
    .end local v5           #j:I
    :cond_3
    return-void
.end method
