.class Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;
.super Ljava/lang/Object;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocaleConfiguration"
.end annotation


# instance fields
.field public locale:Ljava/lang/String;

.field public mcc:I

.field public mnc:I

.field public themePackageSeq:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1194
    iput v0, p0, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;->mcc:I

    .line 1196
    iput v0, p0, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;->mnc:I

    .line 1199
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;->themePackageSeq:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/twlauncher/Launcher$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1191
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;-><init>()V

    return-void
.end method
