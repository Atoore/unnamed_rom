.class Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
.super Lcom/sec/android/app/twlauncher/ItemInfo;
.source "SamsungAppWidgetInfo.java"


# instance fields
.field intent:Landroid/content/Intent;

.field mItem:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

.field state:I

.field widgetId:J

.field widgetView:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/ItemInfo;-><init>()V

    .line 53
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetId:J

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetView:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->state:I

    .line 62
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    .line 63
    return-void
.end method

.method static makeSamsungWidget(Landroid/content/Context;Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;J)Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    .locals 1
    .parameter "context"
    .parameter "item"
    .parameter "widgetId"

    .prologue
    .line 171
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->makeSamsungWidget(Landroid/content/Context;Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;JLcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    move-result-object v0

    return-object v0
.end method

.method static makeSamsungWidget(Landroid/content/Context;Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;JLcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    .locals 5
    .parameter "context"
    .parameter "item"
    .parameter "widgetId"
    .parameter "widgetInfo"

    .prologue
    .line 176
    const/4 v1, 0x0

    .line 177
    .local v1, info:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    if-nez p4, :cond_4

    .line 178
    new-instance p4, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    .end local p4
    invoke-direct {p4}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;-><init>()V

    .line 179
    .end local v1           #info:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    .local p4, info:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    iput-wide p2, p4, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetId:J

    .line 186
    :cond_0
    :goto_0
    const/4 p2, 0x0

    .line 187
    .local p2, contentView:Landroid/view/View;
    const/4 v2, 0x0

    .line 188
    .local v2, orientation:I
    instance-of p3, p0, Landroid/app/ActivityGroup;

    if-eqz p3, :cond_3

    iget-object p3, p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mPackageName:Ljava/lang/String;

    if-eqz p3, :cond_3

    iget-object p3, p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mClassName:Ljava/lang/String;

    if-eqz p3, :cond_3

    .line 190
    move-object v0, p0

    check-cast v0, Landroid/app/ActivityGroup;

    move-object p2, v0

    .line 191
    .local p2, group:Landroid/app/ActivityGroup;
    invoke-virtual {p2}, Landroid/app/ActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    .line 193
    .local v1, manager:Landroid/app/LocalActivityManager;
    const/4 p2, 0x0

    .line 195
    .local p2, c:Landroid/content/Context;
    :try_start_0
    iget-object p3, p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {p0, p3, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 206
    :goto_1
    if-eqz p2, :cond_1

    :try_start_1
    instance-of p3, p0, Lcom/sec/android/app/twlauncher/Launcher;

    if-eqz p3, :cond_1

    .line 207
    move-object v0, p0

    check-cast v0, Lcom/sec/android/app/twlauncher/Launcher;

    move-object p3, v0

    .line 208
    .local p3, launcher:Lcom/sec/android/app/twlauncher/Launcher;
    invoke-virtual {p3}, Lcom/sec/android/app/twlauncher/Launcher;->getResOrientation()I

    move-result v2

    .line 210
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .end local p3           #launcher:Lcom/sec/android/app/twlauncher/Launcher;
    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    .line 212
    .local p3, config:Landroid/content/res/Configuration;
    iget v3, p3, Landroid/content/res/Configuration;->orientation:I

    if-eq v3, v2, :cond_1

    .line 213
    iput v2, p3, Landroid/content/res/Configuration;->orientation:I

    .line 214
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .end local p2           #c:Landroid/content/Context;
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    invoke-virtual {v3, p3, p2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local p3           #config:Landroid/content/res/Configuration;
    :cond_1
    move p2, v2

    .end local v2           #orientation:I
    .local p2, orientation:I
    move v2, p2

    .line 223
    .end local p2           #orientation:I
    .restart local v2       #orientation:I
    :goto_2
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 224
    .local p2, intent:Landroid/content/Intent;
    iget-object p3, p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mPackageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mClassName:Ljava/lang/String;

    invoke-virtual {p2, p3, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    const-string p3, "com.samsung.sec.android.SAMSUNG_WIDGET.themename"

    iget-object v3, p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mThemeName:Ljava/lang/String;

    invoke-virtual {p2, p3, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    const/4 p3, 0x0

    .line 228
    .local p3, w:Landroid/view/Window;
    :try_start_2
    iget-wide v3, p4, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, p2}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object p2

    .line 234
    .end local v1           #manager:Landroid/app/LocalActivityManager;
    .end local p3           #w:Landroid/view/Window;
    .local p2, w:Landroid/view/Window;
    :goto_3
    if-eqz p2, :cond_5

    const p3, 0x1020002

    invoke-virtual {p2, p3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .end local p2           #w:Landroid/view/Window;
    move-object p3, p2

    .line 235
    .local p3, mainView:Landroid/view/View;
    :goto_4
    if-eqz p3, :cond_6

    move-object v0, p3

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    const/4 p2, 0x0

    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 237
    .local p2, contentView:Landroid/view/View;
    :goto_5
    if-eqz p2, :cond_2

    .line 238
    check-cast p3, Landroid/view/ViewGroup;

    .end local p3           #mainView:Landroid/view/View;
    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 244
    :cond_2
    iget-object p3, p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mPackageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mClassName:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mThemeName:Ljava/lang/String;

    invoke-virtual {p4, p3, v1, v3}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->setIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move p3, v2

    .line 247
    .end local v2           #orientation:I
    .local p3, orientation:I
    new-instance v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;

    invoke-direct {v1, p0}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;-><init>(Landroid/content/Context;)V

    .line 249
    .local v1, widgetView:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;
    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    .end local p0
    invoke-virtual {p1, p3}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->getWidth(I)I

    move-result v2

    invoke-virtual {p1, p3}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->getHeight(I)I

    move-result p3

    .end local p3           #orientation:I
    invoke-direct {p0, v2, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 251
    .local p0, lp:Landroid/widget/FrameLayout$LayoutParams;
    const/16 p3, 0x11

    iput p3, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 253
    if-eqz p2, :cond_7

    .line 254
    invoke-virtual {v1, p2, p0}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 259
    .end local p2           #contentView:Landroid/view/View;
    :goto_6
    iput-object v1, p4, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetView:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;

    .line 260
    iput-object p1, p4, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->mItem:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    .line 262
    return-object p4

    .line 181
    .local v1, info:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    .local p0, context:Landroid/content/Context;
    .local p2, widgetId:J
    .local p4, widgetInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    :cond_4
    move-object p4, p4

    .line 182
    .end local v1           #info:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    .local p4, info:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    iget-wide v1, p4, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 183
    iput-wide p2, p4, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetId:J

    goto/16 :goto_0

    .line 197
    .local v1, manager:Landroid/app/LocalActivityManager;
    .restart local v2       #orientation:I
    .local p2, c:Landroid/content/Context;
    :catch_0
    move-exception p3

    .line 198
    .local p3, e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {p3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    .line 217
    .end local p2           #c:Landroid/content/Context;
    .end local p3           #e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception p2

    move p3, v2

    .line 218
    .end local v2           #orientation:I
    .local p2, e1:Ljava/lang/Exception;
    .local p3, orientation:I
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    move v2, p3

    .end local p3           #orientation:I
    .restart local v2       #orientation:I
    goto :goto_2

    .line 229
    .local p2, intent:Landroid/content/Intent;
    .local p3, w:Landroid/view/Window;
    :catch_2
    move-exception p2

    .line 230
    .local p2, e:Ljava/lang/Exception;
    const-string v1, "SamsungAppWidgetInfo"

    .end local v1           #manager:Landroid/app/LocalActivityManager;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed startActivity("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    move-object p2, p3

    .end local p3           #w:Landroid/view/Window;
    .local p2, w:Landroid/view/Window;
    goto/16 :goto_3

    .line 234
    :cond_5
    const/4 p2, 0x0

    move-object p3, p2

    goto :goto_4

    .line 235
    .end local p2           #w:Landroid/view/Window;
    .local p3, mainView:Landroid/view/View;
    :cond_6
    const/4 p2, 0x0

    goto :goto_5

    .line 256
    .end local v2           #orientation:I
    .end local p3           #mainView:Landroid/view/View;
    .local v1, widgetView:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;
    .local p0, lp:Landroid/widget/FrameLayout$LayoutParams;
    .local p2, contentView:Landroid/view/View;
    :cond_7
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->getErrorView()Landroid/view/View;

    move-result-object p2

    .end local p2           #contentView:Landroid/view/View;
    invoke-virtual {v1, p2, p0}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6
.end method


# virtual methods
.method public fireOnPause(Landroid/content/Context;)V
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 90
    iget v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/app/ActivityGroup;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 93
    check-cast p1, Landroid/app/ActivityGroup;

    .line 94
    invoke-virtual {p1}, Landroid/app/ActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    .line 101
    const/4 v2, 0x0

    move-object v3, v4

    :goto_1
    array-length v4, v1

    if-ge v2, v4, :cond_3

    .line 102
    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/sec/android/touchwiz/appwidget/IWidgetObserver;

    invoke-virtual {v5}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 103
    aget-object v3, v1, v2

    .line 101
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 107
    :cond_3
    if-eqz v3, :cond_0

    .line 109
    :try_start_0
    const-string v1, "fireOnPause"

    const/4 v2, 0x0

    invoke-virtual {v3, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 110
    if-eqz v1, :cond_0

    .line 111
    const/4 v2, 0x2

    iput v2, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->state:I

    .line 112
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 116
    :catch_1
    move-exception v0

    .line 117
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 118
    :catch_2
    move-exception v0

    .line 119
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 120
    :catch_3
    move-exception v0

    .line 121
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 122
    :catch_4
    move-exception v0

    .line 123
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method public fireOnResume(Landroid/content/Context;)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 130
    iget v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->state:I

    if-ne v0, v1, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/app/ActivityGroup;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 133
    check-cast p1, Landroid/app/ActivityGroup;

    .line 134
    invoke-virtual {p1}, Landroid/app/ActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    .line 136
    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    .line 141
    const/4 v2, 0x0

    move-object v3, v4

    :goto_1
    array-length v4, v1

    if-ge v2, v4, :cond_3

    .line 142
    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/sec/android/touchwiz/appwidget/IWidgetObserver;

    invoke-virtual {v5}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 143
    aget-object v3, v1, v2

    .line 141
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 147
    :cond_3
    if-eqz v3, :cond_0

    .line 149
    :try_start_0
    const-string v1, "fireOnResume"

    const/4 v2, 0x0

    invoke-virtual {v3, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 150
    if-eqz v1, :cond_0

    .line 151
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->state:I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    .line 154
    :catch_0
    move-exception v0

    .line 155
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 156
    :catch_1
    move-exception v0

    .line 157
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 158
    :catch_2
    move-exception v0

    .line 159
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 160
    :catch_3
    move-exception v0

    .line 161
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 162
    :catch_4
    move-exception v0

    .line 163
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method onAddToDatabase(Landroid/content/ContentValues;)V
    .locals 3
    .parameter "values"

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/sec/android/app/twlauncher/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 80
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->intent:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 81
    .local v0, uri:Ljava/lang/String;
    :goto_0
    const-string v1, "intent"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void

    .line 80
    .end local v0           #uri:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method final setIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"
    .parameter "className"
    .parameter "themeName"

    .prologue
    .line 69
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->intent:Landroid/content/Intent;

    .line 70
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->intent:Landroid/content/Intent;

    const-string v1, "com.samsung.sec.android.SAMSUNG_WIDGET.themename"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
