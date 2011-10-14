.class Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "MenuManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/MenuManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdapterDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/MenuManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/MenuManager;)V
    .locals 0
    .parameter

    .prologue
    .line 3613
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 3617
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->access$1000(Lcom/sec/android/app/twlauncher/MenuManager;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 3618
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->startUpdateDB()V

    .line 3620
    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 3624
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->access$1000(Lcom/sec/android/app/twlauncher/MenuManager;)Z

    .line 3625
    return-void
.end method
