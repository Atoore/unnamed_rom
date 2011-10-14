.class public Lcom/sec/android/app/twlauncher/BgMap;
.super Ljava/lang/Object;
.source "BgMap.java"


# instance fields
.field mClassName:Ljava/lang/String;

.field mPackageName:Ljava/lang/String;

.field mResid:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "packageName"
    .parameter "className"
    .parameter "resid"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/BgMap;->mPackageName:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/sec/android/app/twlauncher/BgMap;->mClassName:Ljava/lang/String;

    .line 15
    iput p3, p0, Lcom/sec/android/app/twlauncher/BgMap;->mResid:I

    .line 16
    return-void
.end method
