.class public Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;
.super Ljava/lang/Object;
.source "LauncherModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PackageInfo"
.end annotation


# instance fields
.field private mAppInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mChanged:Z

.field private mPackageName:Ljava/lang/String;

.field private mResolveInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/app/twlauncher/LauncherModel;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/twlauncher/LauncherModel;)V
    .locals 1
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->mAppInfos:Ljava/util/List;

    .line 287
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->mChanged:Z

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 280
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 280
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->mPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 280
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->mResolveInfos:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 280
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->mResolveInfos:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 280
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->mAppInfos:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 280
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->mChanged:Z

    return v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 280
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->mChanged:Z

    return p1
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method
