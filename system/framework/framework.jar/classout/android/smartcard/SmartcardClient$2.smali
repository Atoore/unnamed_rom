.class Landroid/smartcard/SmartcardClient$2;
.super Ljava/lang/Object;
.source "SmartcardClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/smartcard/SmartcardClient;-><init>(Landroid/content/Context;Landroid/smartcard/SmartcardClient$ISmartcardConnectionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/smartcard/SmartcardClient;


# direct methods
.method constructor <init>(Landroid/smartcard/SmartcardClient;)V
    .registers 2
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Landroid/smartcard/SmartcardClient$2;->this$0:Landroid/smartcard/SmartcardClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .parameter "className"
    .parameter "service"

    .prologue
    .line 101
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/smartcard/SmartcardClient$2;->this$0:Landroid/smartcard/SmartcardClient;

    invoke-static {p2}, Landroid/smartcard/ISmartcardService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/smartcard/ISmartcardService;

    move-result-object v1

    #setter for: Landroid/smartcard/SmartcardClient;->smartcardService:Landroid/smartcard/ISmartcardService;
    invoke-static {v0, v1}, Landroid/smartcard/SmartcardClient;->access$002(Landroid/smartcard/SmartcardClient;Landroid/smartcard/ISmartcardService;)Landroid/smartcard/ISmartcardService;

    .line 102
    iget-object v0, p0, Landroid/smartcard/SmartcardClient$2;->this$0:Landroid/smartcard/SmartcardClient;

    #getter for: Landroid/smartcard/SmartcardClient;->connectionListener:Landroid/smartcard/SmartcardClient$ISmartcardConnectionListener;
    invoke-static {v0}, Landroid/smartcard/SmartcardClient;->access$100(Landroid/smartcard/SmartcardClient;)Landroid/smartcard/SmartcardClient$ISmartcardConnectionListener;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 103
    iget-object v0, p0, Landroid/smartcard/SmartcardClient$2;->this$0:Landroid/smartcard/SmartcardClient;

    #getter for: Landroid/smartcard/SmartcardClient;->connectionListener:Landroid/smartcard/SmartcardClient$ISmartcardConnectionListener;
    invoke-static {v0}, Landroid/smartcard/SmartcardClient;->access$100(Landroid/smartcard/SmartcardClient;)Landroid/smartcard/SmartcardClient$ISmartcardConnectionListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/smartcard/SmartcardClient$ISmartcardConnectionListener;->serviceConnected()V

    .line 105
    :cond_1b
    const-string v0, "SmartcardApi"

    const-string v1, "Smartcard service onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 106
    monitor-exit p0

    return-void

    .line 101
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 6
    .parameter "className"

    .prologue
    .line 109
    iget-object v2, p0, Landroid/smartcard/SmartcardClient$2;->this$0:Landroid/smartcard/SmartcardClient;

    #getter for: Landroid/smartcard/SmartcardClient;->channels:Ljava/util/Set;
    invoke-static {v2}, Landroid/smartcard/SmartcardClient;->access$200(Landroid/smartcard/SmartcardClient;)Ljava/util/Set;

    move-result-object v2

    monitor-enter v2

    .line 110
    :try_start_7
    iget-object v3, p0, Landroid/smartcard/SmartcardClient$2;->this$0:Landroid/smartcard/SmartcardClient;

    #getter for: Landroid/smartcard/SmartcardClient;->channels:Ljava/util/Set;
    invoke-static {v3}, Landroid/smartcard/SmartcardClient;->access$200(Landroid/smartcard/SmartcardClient;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/smartcard/CardChannel;
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_4c

    .line 112
    .local v0, channel:Landroid/smartcard/CardChannel;
    :try_start_1d
    invoke-virtual {v0}, Landroid/smartcard/CardChannel;->invalidate()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_4c
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_11

    .line 113
    :catch_21
    move-exception v3

    goto :goto_11

    .line 116
    .end local v0           #channel:Landroid/smartcard/CardChannel;
    :cond_23
    :try_start_23
    iget-object v3, p0, Landroid/smartcard/SmartcardClient$2;->this$0:Landroid/smartcard/SmartcardClient;

    #getter for: Landroid/smartcard/SmartcardClient;->channels:Ljava/util/Set;
    invoke-static {v3}, Landroid/smartcard/SmartcardClient;->access$200(Landroid/smartcard/SmartcardClient;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 117
    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_23 .. :try_end_2d} :catchall_4c

    .line 118
    iget-object v2, p0, Landroid/smartcard/SmartcardClient$2;->this$0:Landroid/smartcard/SmartcardClient;

    const/4 v3, 0x0

    #setter for: Landroid/smartcard/SmartcardClient;->smartcardService:Landroid/smartcard/ISmartcardService;
    invoke-static {v2, v3}, Landroid/smartcard/SmartcardClient;->access$002(Landroid/smartcard/SmartcardClient;Landroid/smartcard/ISmartcardService;)Landroid/smartcard/ISmartcardService;

    .line 119
    iget-object v2, p0, Landroid/smartcard/SmartcardClient$2;->this$0:Landroid/smartcard/SmartcardClient;

    #getter for: Landroid/smartcard/SmartcardClient;->connectionListener:Landroid/smartcard/SmartcardClient$ISmartcardConnectionListener;
    invoke-static {v2}, Landroid/smartcard/SmartcardClient;->access$100(Landroid/smartcard/SmartcardClient;)Landroid/smartcard/SmartcardClient$ISmartcardConnectionListener;

    move-result-object v2

    if-eqz v2, :cond_44

    .line 120
    iget-object v2, p0, Landroid/smartcard/SmartcardClient$2;->this$0:Landroid/smartcard/SmartcardClient;

    #getter for: Landroid/smartcard/SmartcardClient;->connectionListener:Landroid/smartcard/SmartcardClient$ISmartcardConnectionListener;
    invoke-static {v2}, Landroid/smartcard/SmartcardClient;->access$100(Landroid/smartcard/SmartcardClient;)Landroid/smartcard/SmartcardClient$ISmartcardConnectionListener;

    move-result-object v2

    invoke-interface {v2}, Landroid/smartcard/SmartcardClient$ISmartcardConnectionListener;->serviceDisconnected()V

    .line 122
    :cond_44
    const-string v2, "SmartcardApi"

    const-string v3, "Smartcard service onServiceDisconnected"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-void

    .line 117
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_4c
    move-exception v3

    :try_start_4d
    monitor-exit v2
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw v3
.end method
