.class public interface abstract Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailNotificationListener;
.super Ljava/lang/Object;
.source "IAreaMailNotificationListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailNotificationListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onComplete(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
