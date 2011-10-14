.class Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoCustomComparator;
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
    name = "ApplicationInfoCustomComparator"
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


# instance fields
.field private mMode:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 1043
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1040
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoCustomComparator;->mMode:I

    .line 1044
    return-void
.end method

.method constructor <init>(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 1047
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1040
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoCustomComparator;->mMode:I

    .line 1048
    iput p1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoCustomComparator;->mMode:I

    .line 1049
    return-void
.end method


# virtual methods
.method public final compare(Lcom/sec/android/app/twlauncher/ApplicationInfo;Lcom/sec/android/app/twlauncher/ApplicationInfo;)I
    .locals 8
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v7, -0x1

    .line 1054
    iget v5, p0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoCustomComparator;->mMode:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    iget v5, p0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoCustomComparator;->mMode:I

    if-nez v5, :cond_2

    .line 1055
    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getEditPageNum()I

    move-result v2

    .line 1056
    .local v2, pageA:I
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getEditCellNum()I

    move-result v0

    .line 1057
    .local v0, cellA:I
    invoke-virtual {p2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getEditPageNum()I

    move-result v3

    .line 1058
    .local v3, pageB:I
    invoke-virtual {p2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getEditCellNum()I

    move-result v1

    .line 1067
    .local v1, cellB:I
    :goto_0
    if-ne v2, v7, :cond_3

    if-eq v3, v7, :cond_3

    .line 1068
    const/4 v4, 0x1

    .line 1080
    .local v4, ret:I
    :cond_1
    :goto_1
    return v4

    .line 1061
    .end local v0           #cellA:I
    .end local v1           #cellB:I
    .end local v2           #pageA:I
    .end local v3           #pageB:I
    .end local v4           #ret:I
    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getPageNum()I

    move-result v2

    .line 1062
    .restart local v2       #pageA:I
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getCellNum()I

    move-result v0

    .line 1063
    .restart local v0       #cellA:I
    invoke-virtual {p2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getPageNum()I

    move-result v3

    .line 1064
    .restart local v3       #pageB:I
    invoke-virtual {p2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getCellNum()I

    move-result v1

    .restart local v1       #cellB:I
    goto :goto_0

    .line 1069
    :cond_3
    if-eq v2, v7, :cond_4

    if-ne v3, v7, :cond_4

    .line 1070
    const/4 v4, -0x1

    .restart local v4       #ret:I
    goto :goto_1

    .line 1072
    .end local v4           #ret:I
    :cond_4
    invoke-static {v2, v3}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1500(II)I

    move-result v4

    .line 1073
    .restart local v4       #ret:I
    if-nez v4, :cond_1

    .line 1074
    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1500(II)I

    move-result v4

    .line 1076
    if-nez v4, :cond_1

    .line 1077
    invoke-static {}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1400()Ljava/text/Collator;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1038
    check-cast p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .end local p1
    check-cast p2, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoCustomComparator;->compare(Lcom/sec/android/app/twlauncher/ApplicationInfo;Lcom/sec/android/app/twlauncher/ApplicationInfo;)I

    move-result v0

    return v0
.end method
