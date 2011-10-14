.class Lcom/sec/android/app/twlauncher/AddWidgetDialog$WidgetComparator;
.super Ljava/lang/Object;
.source "AddWidgetDialog.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/AddWidgetDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WidgetComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/AddWidgetDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/AddWidgetDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1008
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog$WidgetComparator;->this$0:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .parameter "widget1"
    .parameter "widget2"

    .prologue
    .line 1012
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/AddWidgetDialog$WidgetComparator;->getPackageName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1013
    .local v0, name1:Ljava/lang/String;
    invoke-virtual {p0, p2}, Lcom/sec/android/app/twlauncher/AddWidgetDialog$WidgetComparator;->getPackageName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1015
    .local v1, name2:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public getPackageName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 9
    .parameter "obj"

    .prologue
    .line 1020
    instance-of v6, p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    if-eqz v6, :cond_1

    .line 1021
    check-cast p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    .end local p1
    iget-object v3, p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mWidgetTitle:Ljava/lang/String;

    .line 1038
    .local v3, name:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v3

    .line 1023
    .end local v3           #name:Ljava/lang/String;
    .restart local p1
    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    move-object v5, v0

    .line 1024
    .local v5, provider:Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v3, v5, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    .line 1025
    .restart local v3       #name:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 1026
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog$WidgetComparator;->this$0:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    invoke-static {v6}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->access$000(Lcom/sec/android/app/twlauncher/AddWidgetDialog;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1029
    .local v4, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v6, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 1030
    .local v2, info:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v4, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 1031
    .end local v2           #info:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 1032
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "AddWidgetDialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " Getting lable of package ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
