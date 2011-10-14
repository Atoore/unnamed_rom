.class Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$CheckForLongPress;
.super Ljava/lang/Object;
.source "LauncherAppWidgetHostView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckForLongPress"
.end annotation


# instance fields
.field private mOriginalWindowAttachCount:I

.field final synthetic this$0:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$CheckForLongPress;->this$0:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rememberWindowAttachCount()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$CheckForLongPress;->this$0:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->access$300(Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$CheckForLongPress;->mOriginalWindowAttachCount:I

    .line 123
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$CheckForLongPress;->this$0:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->access$000(Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;)Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$CheckForLongPress;->this$0:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$CheckForLongPress;->mOriginalWindowAttachCount:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$CheckForLongPress;->this$0:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;

    invoke-static {v1}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->access$100(Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$CheckForLongPress;->this$0:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->access$200(Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$CheckForLongPress;->this$0:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->performLongClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$CheckForLongPress;->this$0:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->access$202(Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;Z)Z

    .line 119
    :cond_0
    return-void
.end method
