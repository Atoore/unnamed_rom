.class Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;
.super Lcom/sec/android/app/twlauncher/ItemInfo;
.source "LauncherAppWidgetInfo.java"


# instance fields
.field appWidgetId:I

.field hostView:Landroid/appwidget/AppWidgetHostView;


# direct methods
.method constructor <init>(I)V
    .locals 1
    .parameter "appWidgetId"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/ItemInfo;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 40
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    .line 41
    iput p1, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->appWidgetId:I

    .line 42
    return-void
.end method


# virtual methods
.method onAddToDatabase(Landroid/content/ContentValues;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/sec/android/app/twlauncher/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 47
    const-string v0, "appWidgetId"

    iget v1, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 48
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
