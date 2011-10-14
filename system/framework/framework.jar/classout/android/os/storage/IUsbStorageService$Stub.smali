.class public abstract Landroid/os/storage/IUsbStorageService$Stub;
.super Landroid/os/Binder;
.source "IUsbStorageService.java"

# interfaces
.implements Landroid/os/storage/IUsbStorageService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/IUsbStorageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/IUsbStorageService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "IUsbStorageService"

.field static final TRANSACTION_formatVolume:I = 0x5

.field static final TRANSACTION_getShowSafeUnmountNotification:I = 0x9

.field static final TRANSACTION_getVolumeList:I = 0xb

.field static final TRANSACTION_getVolumeState:I = 0x6

.field static final TRANSACTION_isUsbStorageConnected:I = 0x7

.field static final TRANSACTION_mountVolume:I = 0x3

.field static final TRANSACTION_registerListener:I = 0x1

.field static final TRANSACTION_setShowSafeUnmountNotification:I = 0xa

.field static final TRANSACTION_unmountVolume:I = 0x4

.field static final TRANSACTION_unmountVolumeAll:I = 0x8

.field static final TRANSACTION_unregisterListener:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 280
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 281
    const-string v0, "IUsbStorageService"

    invoke-virtual {p0, p0, v0}, Landroid/os/storage/IUsbStorageService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 282
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/storage/IUsbStorageService;
    .registers 3
    .parameter "obj"

    .prologue
    .line 269
    if-nez p0, :cond_4

    .line 270
    const/4 v1, 0x0

    .line 276
    :goto_3
    return-object v1

    .line 272
    :cond_4
    const-string v1, "IUsbStorageService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 273
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/storage/IUsbStorageService;

    if-eqz v1, :cond_14

    .line 274
    check-cast v0, Landroid/os/storage/IUsbStorageService;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 276
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Landroid/os/storage/IUsbStorageService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/storage/IUsbStorageService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 285
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 291
    sparse-switch p1, :sswitch_data_108

    .line 394
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    :goto_7
    return v9

    .line 293
    :sswitch_8
    const-string v9, "IUsbStorageService"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 294
    const/4 v9, 0x1

    goto :goto_7

    .line 297
    :sswitch_f
    const-string v9, "IUsbStorageService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/os/storage/IUsbStorageServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IUsbStorageServiceListener;

    move-result-object v2

    .line 300
    .local v2, listener:Landroid/os/storage/IUsbStorageServiceListener;
    invoke-virtual {p0, v2}, Landroid/os/storage/IUsbStorageService$Stub;->registerListener(Landroid/os/storage/IUsbStorageServiceListener;)V

    .line 301
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    const/4 v9, 0x1

    goto :goto_7

    .line 305
    .end local v2           #listener:Landroid/os/storage/IUsbStorageServiceListener;
    :sswitch_24
    const-string v9, "IUsbStorageService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/os/storage/IUsbStorageServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IUsbStorageServiceListener;

    move-result-object v2

    .line 308
    .restart local v2       #listener:Landroid/os/storage/IUsbStorageServiceListener;
    invoke-virtual {p0, v2}, Landroid/os/storage/IUsbStorageService$Stub;->unregisterListener(Landroid/os/storage/IUsbStorageServiceListener;)V

    .line 309
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    const/4 v9, 0x1

    goto :goto_7

    .line 314
    .end local v2           #listener:Landroid/os/storage/IUsbStorageServiceListener;
    :sswitch_39
    const-string v9, "IUsbStorageService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 316
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 317
    .local v3, mountPoint:Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/os/storage/IUsbStorageService$Stub;->mountVolume(Ljava/lang/String;)I

    move-result v5

    .line 318
    .local v5, resultCode:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    const/4 v9, 0x1

    goto :goto_7

    .line 323
    .end local v3           #mountPoint:Ljava/lang/String;
    .end local v5           #resultCode:I
    :sswitch_4e
    const-string v9, "IUsbStorageService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 327
    .restart local v3       #mountPoint:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_67

    const/4 v9, 0x1

    move v0, v9

    .line 328
    .local v0, force:Z
    :goto_5f
    invoke-virtual {p0, v3, v0}, Landroid/os/storage/IUsbStorageService$Stub;->unmountVolume(Ljava/lang/String;Z)V

    .line 329
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    const/4 v9, 0x1

    goto :goto_7

    .line 327
    .end local v0           #force:Z
    :cond_67
    const/4 v9, 0x0

    move v0, v9

    goto :goto_5f

    .line 333
    .end local v3           #mountPoint:Ljava/lang/String;
    :sswitch_6a
    const-string v9, "IUsbStorageService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_7f

    const/4 v9, 0x1

    move v0, v9

    .line 336
    .restart local v0       #force:Z
    :goto_77
    invoke-virtual {p0, v0}, Landroid/os/storage/IUsbStorageService$Stub;->unmountVolume(Z)V

    .line 337
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    const/4 v9, 0x1

    goto :goto_7

    .line 335
    .end local v0           #force:Z
    :cond_7f
    const/4 v9, 0x0

    move v0, v9

    goto :goto_77

    .line 342
    :sswitch_82
    const-string v9, "IUsbStorageService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 345
    .restart local v3       #mountPoint:Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/os/storage/IUsbStorageService$Stub;->formatVolume(Ljava/lang/String;)I

    move-result v4

    .line 346
    .local v4, result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 348
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 351
    .end local v3           #mountPoint:Ljava/lang/String;
    .end local v4           #result:I
    :sswitch_98
    const-string v9, "IUsbStorageService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 353
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 354
    .restart local v3       #mountPoint:Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/os/storage/IUsbStorageService$Stub;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 355
    .local v8, state:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 357
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 361
    .end local v3           #mountPoint:Ljava/lang/String;
    .end local v8           #state:Ljava/lang/String;
    :sswitch_ae
    const-string v9, "IUsbStorageService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 362
    invoke-virtual {p0}, Landroid/os/storage/IUsbStorageService$Stub;->isUsbStorageConnected()Z

    move-result v4

    .line 363
    .local v4, result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    if-eqz v4, :cond_c3

    const/4 v9, 0x1

    :goto_bd
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 364
    :cond_c3
    const/4 v9, 0x0

    goto :goto_bd

    .line 369
    .end local v4           #result:Z
    :sswitch_c5
    const-string v9, "IUsbStorageService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p0}, Landroid/os/storage/IUsbStorageService$Stub;->getShowSafeUnmountNotification()Z

    move-result v6

    .line 371
    .local v6, ret:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    if-eqz v6, :cond_da

    const/4 v9, 0x1

    :goto_d4
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 373
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 372
    :cond_da
    const/4 v9, 0x0

    goto :goto_d4

    .line 377
    .end local v6           #ret:Z
    :sswitch_dc
    const-string v9, "IUsbStorageService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 379
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_f2

    const/4 v9, 0x1

    move v7, v9

    .line 380
    .local v7, set:Z
    :goto_e9
    invoke-virtual {p0, v7}, Landroid/os/storage/IUsbStorageService$Stub;->setShowSafeUnmountNotification(Z)V

    .line 381
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 379
    .end local v7           #set:Z
    :cond_f2
    const/4 v9, 0x0

    move v7, v9

    goto :goto_e9

    .line 386
    :sswitch_f5
    const-string v9, "IUsbStorageService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p0}, Landroid/os/storage/IUsbStorageService$Stub;->getVolumeList()[Ljava/lang/String;

    move-result-object v1

    .line 388
    .local v1, ids:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 390
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 291
    nop

    :sswitch_data_108
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_24
        0x3 -> :sswitch_39
        0x4 -> :sswitch_4e
        0x5 -> :sswitch_82
        0x6 -> :sswitch_98
        0x7 -> :sswitch_ae
        0x8 -> :sswitch_6a
        0x9 -> :sswitch_c5
        0xa -> :sswitch_dc
        0xb -> :sswitch_f5
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
