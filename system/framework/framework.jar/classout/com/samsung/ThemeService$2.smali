.class Lcom/samsung/ThemeService$2;
.super Ljava/lang/Object;
.source "ThemeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/ThemeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/ThemeService;


# direct methods
.method constructor <init>(Lcom/samsung/ThemeService;)V
    .registers 2
    .parameter

    .prologue
    .line 1404
    iput-object p1, p0, Lcom/samsung/ThemeService$2;->this$0:Lcom/samsung/ThemeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1406
    iget-object v0, p0, Lcom/samsung/ThemeService$2;->this$0:Lcom/samsung/ThemeService;

    #getter for: Lcom/samsung/ThemeService;->mInstalledThemeListLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/samsung/ThemeService;->access$200(Lcom/samsung/ThemeService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1407
    :try_start_7
    iget-object v1, p0, Lcom/samsung/ThemeService$2;->this$0:Lcom/samsung/ThemeService;

    #calls: Lcom/samsung/ThemeService;->loadInstalledThemeListLocked()Z
    invoke-static {v1}, Lcom/samsung/ThemeService;->access$300(Lcom/samsung/ThemeService;)Z

    .line 1408
    monitor-exit v0

    .line 1409
    return-void

    .line 1408
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method
