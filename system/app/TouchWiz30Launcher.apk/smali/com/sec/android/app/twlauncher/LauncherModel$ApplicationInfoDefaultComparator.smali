.class Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoDefaultComparator;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ApplicationInfoDefaultComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1004
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/sec/android/app/twlauncher/ApplicationInfo;Lcom/sec/android/app/twlauncher/ApplicationInfo;)I
    .locals 7
    .parameter "a"
    .parameter "b"

    .prologue
    .line 1011
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getDefaultSort()I

    move-result v1

    .line 1012
    .local v1, sortA:I
    invoke-virtual {p2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getDefaultSort()I

    move-result v2

    .line 1013
    .local v2, sortB:I
    if-nez v1, :cond_1

    if-eqz v2, :cond_1

    .line 1014
    const/4 v0, 0x1

    .line 1027
    .local v0, ret:I
    :cond_0
    :goto_0
    return v0

    .line 1015
    .end local v0           #ret:I
    :cond_1
    if-eqz v1, :cond_2

    if-nez v2, :cond_2

    .line 1016
    const/4 v0, -0x1

    .restart local v0       #ret:I
    goto :goto_0

    .line 1018
    .end local v0           #ret:I
    :cond_2
    invoke-static {v1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1500(II)I

    move-result v0

    .line 1020
    .restart local v0       #ret:I
    if-nez v0, :cond_0

    .line 1021
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getCreateTime()J

    move-result-wide v3

    invoke-virtual {p2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getCreateTime()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1600(JJ)I

    move-result v0

    .line 1023
    if-nez v0, :cond_0

    .line 1024
    invoke-static {}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1400()Ljava/text/Collator;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1004
    check-cast p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .end local p1
    check-cast p2, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoDefaultComparator;->compare(Lcom/sec/android/app/twlauncher/ApplicationInfo;Lcom/sec/android/app/twlauncher/ApplicationInfo;)I

    move-result v0

    return v0
.end method
