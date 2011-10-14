.class Landroid/util/GateAgentSettings$GateLoggerSettingsServiceConnection;
.super Ljava/lang/Object;
.source "GateAgentSettings.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/GateAgentSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GateLoggerSettingsServiceConnection"
.end annotation


# instance fields
.field private mLock:Ljava/lang/Object;

.field private mService:Landroid/util/IGateLoggerSettingsService;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .parameter "lock"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/util/GateAgentSettings$GateLoggerSettingsServiceConnection;->mService:Landroid/util/IGateLoggerSettingsService;

    .line 37
    iput-object p1, p0, Landroid/util/GateAgentSettings$GateLoggerSettingsServiceConnection;->mLock:Ljava/lang/Object;

    .line 38
    return-void
.end method


# virtual methods
.method public getService()Landroid/util/IGateLoggerSettingsService;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Landroid/util/GateAgentSettings$GateLoggerSettingsServiceConnection;->mService:Landroid/util/IGateLoggerSettingsService;

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .parameter "className"
    .parameter "service"

    .prologue
    .line 45
    const-string v0, "GateAgentSettings"

    const-string/jumbo v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-static {p2}, Landroid/util/IGateLoggerSettingsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/util/IGateLoggerSettingsService;

    move-result-object v0

    iput-object v0, p0, Landroid/util/GateAgentSettings$GateLoggerSettingsServiceConnection;->mService:Landroid/util/IGateLoggerSettingsService;

    .line 47
    iget-object v0, p0, Landroid/util/GateAgentSettings$GateLoggerSettingsServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 48
    :try_start_11
    iget-object v1, p0, Landroid/util/GateAgentSettings$GateLoggerSettingsServiceConnection;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 49
    monitor-exit v0

    .line 50
    return-void

    .line 49
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter "className"

    .prologue
    .line 53
    const-string v0, "GateAgentSettings"

    const-string/jumbo v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-void
.end method
