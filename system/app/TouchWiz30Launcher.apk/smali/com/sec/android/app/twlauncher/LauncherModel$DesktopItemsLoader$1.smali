.class Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader$1;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;

.field final synthetic val$launcher:Lcom/sec/android/app/twlauncher/Launcher;

.field final synthetic val$uiDesktopItems:Ljava/util/ArrayList;

.field final synthetic val$uiDesktopSamsungAppWidgets:Ljava/util/ArrayList;

.field final synthetic val$uiDesktopWidgets:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;Lcom/sec/android/app/twlauncher/Launcher;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1715
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader$1;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;

    iput-object p2, p0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader$1;->val$launcher:Lcom/sec/android/app/twlauncher/Launcher;

    iput-object p3, p0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader$1;->val$uiDesktopItems:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader$1;->val$uiDesktopWidgets:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader$1;->val$uiDesktopSamsungAppWidgets:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1718
    const-string v0, "Launcher.LauncherModel"

    const-string v1, "  ----> onDesktopItemsLoaded()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader$1;->val$launcher:Lcom/sec/android/app/twlauncher/Launcher;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader$1;->val$uiDesktopItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader$1;->val$uiDesktopWidgets:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader$1;->val$uiDesktopSamsungAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/Launcher;->onDesktopItemsLoaded(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1721
    return-void
.end method
