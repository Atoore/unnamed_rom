.class Lcom/sec/android/app/twlauncher/MenuManager$switchToNormalModeDelayedRunnable;
.super Ljava/lang/Object;
.source "MenuManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/MenuManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "switchToNormalModeDelayedRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/MenuManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/twlauncher/MenuManager;)V
    .locals 0
    .parameter

    .prologue
    .line 2043
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager$switchToNormalModeDelayedRunnable;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2044
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2047
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$switchToNormalModeDelayedRunnable;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2048
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$switchToNormalModeDelayedRunnable;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->save()Z

    .line 2050
    :cond_0
    return-void
.end method
