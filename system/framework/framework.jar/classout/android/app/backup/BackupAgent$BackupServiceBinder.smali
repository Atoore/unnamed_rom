.class Landroid/app/backup/BackupAgent$BackupServiceBinder;
.super Landroid/app/IBackupAgent$Stub;
.source "BackupAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/BackupAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackupServiceBinder"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BackupServiceBinder"


# instance fields
.field final synthetic this$0:Landroid/app/backup/BackupAgent;


# direct methods
.method private constructor <init>(Landroid/app/backup/BackupAgent;)V
    .registers 2
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-direct {p0}, Landroid/app/IBackupAgent$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/backup/BackupAgent;Landroid/app/backup/BackupAgent$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    invoke-direct {p0, p1}, Landroid/app/backup/BackupAgent$BackupServiceBinder;-><init>(Landroid/app/backup/BackupAgent;)V

    return-void
.end method


# virtual methods
.method public doBackup(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V
    .registers 13
    .parameter "oldState"
    .parameter "data"
    .parameter "newState"
    .parameter "token"
    .parameter "callbackBinder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string/jumbo v4, "onBackup ("

    const-string v4, "BackupServiceBinder"

    const-string v4, ") threw"

    .line 204
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 207
    .local v1, ident:J
    new-instance v3, Landroid/app/backup/BackupDataOutput;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/backup/BackupDataOutput;-><init>(Ljava/io/FileDescriptor;)V

    .line 209
    .local v3, output:Landroid/app/backup/BackupDataOutput;
    :try_start_14
    iget-object v4, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v4, p1, v3, p3}, Landroid/app/backup/BackupAgent;->onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_51
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_19} :catch_20
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_19} :catch_59

    .line 217
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 219
    :try_start_1c
    invoke-interface {p5, p4}, Landroid/app/backup/IBackupManager;->opComplete(I)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1f} :catch_87

    .line 224
    :goto_1f
    return-void

    .line 210
    :catch_20
    move-exception v4

    move-object v0, v4

    .line 211
    .local v0, ex:Ljava/io/IOException;
    :try_start_22
    const-string v4, "BackupServiceBinder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onBackup ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") threw"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 212
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_51
    .catchall {:try_start_22 .. :try_end_51} :catchall_51

    .line 217
    .end local v0           #ex:Ljava/io/IOException;
    :catchall_51
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 219
    :try_start_55
    invoke-interface {p5, p4}, Landroid/app/backup/IBackupManager;->opComplete(I)V
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_58} :catch_85

    .line 217
    :goto_58
    throw v4

    .line 213
    :catch_59
    move-exception v4

    move-object v0, v4

    .line 214
    .local v0, ex:Ljava/lang/RuntimeException;
    :try_start_5b
    const-string v4, "BackupServiceBinder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onBackup ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") threw"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 215
    throw v0
    :try_end_85
    .catchall {:try_start_5b .. :try_end_85} :catchall_51

    .line 220
    .end local v0           #ex:Ljava/lang/RuntimeException;
    :catch_85
    move-exception v5

    goto :goto_58

    :catch_87
    move-exception v4

    goto :goto_1f
.end method

.method public doRestore(Landroid/os/ParcelFileDescriptor;ILandroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V
    .registers 13
    .parameter "data"
    .parameter "appVersionCode"
    .parameter "newState"
    .parameter "token"
    .parameter "callbackBinder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string/jumbo v4, "onRestore ("

    const-string v4, "BackupServiceBinder"

    const-string v4, ") threw"

    .line 230
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 233
    .local v1, ident:J
    new-instance v3, Landroid/app/backup/BackupDataInput;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/backup/BackupDataInput;-><init>(Ljava/io/FileDescriptor;)V

    .line 235
    .local v3, input:Landroid/app/backup/BackupDataInput;
    :try_start_14
    iget-object v4, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v4, v3, p2, p3}, Landroid/app/backup/BackupAgent;->onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_51
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_19} :catch_20
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_19} :catch_59

    .line 243
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 245
    :try_start_1c
    invoke-interface {p5, p4}, Landroid/app/backup/IBackupManager;->opComplete(I)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1f} :catch_87

    .line 250
    :goto_1f
    return-void

    .line 236
    :catch_20
    move-exception v4

    move-object v0, v4

    .line 237
    .local v0, ex:Ljava/io/IOException;
    :try_start_22
    const-string v4, "BackupServiceBinder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onRestore ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") threw"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 238
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_51
    .catchall {:try_start_22 .. :try_end_51} :catchall_51

    .line 243
    .end local v0           #ex:Ljava/io/IOException;
    :catchall_51
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 245
    :try_start_55
    invoke-interface {p5, p4}, Landroid/app/backup/IBackupManager;->opComplete(I)V
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_58} :catch_85

    .line 243
    :goto_58
    throw v4

    .line 239
    :catch_59
    move-exception v4

    move-object v0, v4

    .line 240
    .local v0, ex:Ljava/lang/RuntimeException;
    :try_start_5b
    const-string v4, "BackupServiceBinder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onRestore ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") threw"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 241
    throw v0
    :try_end_85
    .catchall {:try_start_5b .. :try_end_85} :catchall_51

    .line 246
    .end local v0           #ex:Ljava/lang/RuntimeException;
    :catch_85
    move-exception v5

    goto :goto_58

    :catch_87
    move-exception v4

    goto :goto_1f
.end method
