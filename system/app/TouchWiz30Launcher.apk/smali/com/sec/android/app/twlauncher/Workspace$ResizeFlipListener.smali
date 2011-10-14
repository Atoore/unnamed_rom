.class Lcom/sec/android/app/twlauncher/Workspace$ResizeFlipListener;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/CustomViewFlipper$ViewFlipperListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResizeFlipListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/Workspace;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/twlauncher/Workspace;)V
    .locals 0
    .parameter

    .prologue
    .line 3613
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Workspace$ResizeFlipListener;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/twlauncher/Workspace;Lcom/sec/android/app/twlauncher/Workspace$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3613
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Workspace$ResizeFlipListener;-><init>(Lcom/sec/android/app/twlauncher/Workspace;)V

    return-void
.end method


# virtual methods
.method public onCustomFlipEnd()V
    .locals 3

    .prologue
    .line 3634
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace$ResizeFlipListener;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Workspace;->access$1100(Lcom/sec/android/app/twlauncher/Workspace;)Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    move-result-object v1

    iget-object p0, v1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .end local p0
    check-cast p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->onCustomFlipEnd()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3639
    :goto_0
    return-void

    .line 3635
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3636
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "Workspace.ResizeFlipListener"

    const-string v2, "CustomViewFlippser is attempting to end a flip on a null AppWidget"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onCustomFlipStart()V
    .locals 3

    .prologue
    .line 3616
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace$ResizeFlipListener;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Workspace;->access$1100(Lcom/sec/android/app/twlauncher/Workspace;)Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    move-result-object v1

    iget-object p0, v1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .end local p0
    check-cast p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->onCustomFlipStart()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3621
    :goto_0
    return-void

    .line 3617
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3618
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "Workspace.ResizeFlipListener"

    const-string v2, "CustomViewFlippser is attempting to start a flip on a null AppWidget"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
