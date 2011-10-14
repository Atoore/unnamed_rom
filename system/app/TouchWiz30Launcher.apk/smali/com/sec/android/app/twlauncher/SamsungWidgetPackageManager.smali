.class public Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;
.super Ljava/lang/Object;
.source "SamsungWidgetPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;
    }
.end annotation


# static fields
.field private static sWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;


# instance fields
.field private mIsWidgetLoaded:Z

.field private final mItemCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;",
            ">;"
        }
    .end annotation
.end field

.field final mMetrics:Landroid/util/DisplayMetrics;

.field private mSamsungAppWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgetLoader:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;

.field private mWidgetLoaderThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/app/ActivityGroup;)V
    .locals 2
    .parameter "group"

    .prologue
    const/16 v1, 0xa

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mItemCache:Ljava/util/HashMap;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mSamsungAppWidgets:Ljava/util/ArrayList;

    .line 93
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mMetrics:Landroid/util/DisplayMetrics;

    .line 110
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->initInstance(Landroid/app/ActivityGroup;)V

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->loadWidgets(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mSamsungAppWidgets:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;Landroid/content/Context;Landroid/content/pm/ResolveInfo;)[Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->makeWidgetItem(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)[Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->loadYahooWidgetForCsc()Z

    move-result v0

    return v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mIsWidgetLoaded:Z

    return p1
.end method

.method private findWidgetForPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .parameter "context"
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 379
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 380
    .local v5, mainIntent:Landroid/content/Intent;
    const-string v7, "com.samsung.sec.android.SAMSUNG_APP_WIDGET_ACTION"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    const-string v7, "com.samsung.sec.android.SAMSUNG_APP_WIDGET"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    invoke-virtual {v5, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 384
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v5, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 386
    .local v1, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 388
    .local v6, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_1

    .line 390
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 391
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 392
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 393
    .local v4, info:Landroid/content/pm/ResolveInfo;
    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 394
    .local v0, activityInfo:Landroid/content/pm/ActivityInfo;
    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 395
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 400
    .end local v0           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v4           #info:Landroid/content/pm/ResolveInfo;
    :cond_1
    return-object v6
.end method

.method public static getInstance(Landroid/app/ActivityGroup;)Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;
    .locals 1
    .parameter "group"

    .prologue
    .line 96
    sget-object v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->sWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;-><init>(Landroid/app/ActivityGroup;)V

    sput-object v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->sWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    .line 102
    :goto_0
    sget-object v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->sWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    return-object v0

    .line 99
    :cond_0
    sget-object v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->sWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->initInstance(Landroid/app/ActivityGroup;)V

    goto :goto_0
.end method

.method private loadWidgets(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 367
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 368
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.samsung.sec.android.SAMSUNG_APP_WIDGET_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    const-string v2, "com.samsung.sec.android.SAMSUNG_APP_WIDGET"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 371
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 374
    .local v0, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    return-object v0
.end method

.method private loadYahooWidgetForCsc()Z
    .locals 23

    .prologue
    .line 742
    const-string v2, "/system/csc/others.xml"

    .line 743
    .local v2, OTHERS_CSC_FILE:Ljava/lang/String;
    const-string v3, "AppWidget"

    .line 744
    .local v3, TAG_APPWIDGET:Ljava/lang/String;
    const-string v4, "Yahoo"

    .line 745
    .local v4, TAG_YAHOO:Ljava/lang/String;
    const-string v6, "On"

    .line 746
    .local v6, YAHOO_ON:Ljava/lang/String;
    const-string v5, "Off"

    .line 749
    .local v5, YAHOO_OFF:Ljava/lang/String;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v13

    .line 751
    .local v13, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_0
    invoke-virtual {v13}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v7

    .line 752
    .local v7, builder:Ljavax/xml/parsers/DocumentBuilder;
    new-instance v20, Ljava/io/File;

    const-string v21, "/system/csc/others.xml"

    invoke-direct/range {v20 .. v21}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v7

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v17

    .line 753
    .local v17, mDoc:Lorg/w3c/dom/Document;
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v18

    .line 754
    .local v18, mRoot:Lorg/w3c/dom/Node;
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 755
    .local v10, children:Lorg/w3c/dom/NodeList;
    if-eqz v10, :cond_4

    .line 756
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v19

    .line 757
    .local v19, n:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    move v0, v14

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    .line 758
    invoke-interface {v10, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 759
    .local v8, child:Lorg/w3c/dom/Node;
    const-string v20, "AppWidget"

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 760
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v11

    .line 761
    .local v11, children2:Lorg/w3c/dom/NodeList;
    if-eqz v11, :cond_3

    .line 762
    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v16

    .line 763
    .local v16, m:I
    const/4 v15, 0x0

    .local v15, j:I
    :goto_1
    move v0, v15

    move/from16 v1, v16

    if-ge v0, v1, :cond_3

    .line 764
    invoke-interface {v11, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    .line 765
    .local v9, child2:Lorg/w3c/dom/Node;
    const-string v20, "Yahoo"

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 766
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v20

    const-string v21, "On"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 767
    const/16 v20, 0x1

    .line 786
    .end local v7           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v8           #child:Lorg/w3c/dom/Node;
    .end local v9           #child2:Lorg/w3c/dom/Node;
    .end local v10           #children:Lorg/w3c/dom/NodeList;
    .end local v11           #children2:Lorg/w3c/dom/NodeList;
    .end local v14           #i:I
    .end local v15           #j:I
    .end local v16           #m:I
    .end local v17           #mDoc:Lorg/w3c/dom/Document;
    .end local v18           #mRoot:Lorg/w3c/dom/Node;
    .end local v19           #n:I
    :goto_2
    return v20

    .line 768
    .restart local v7       #builder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v8       #child:Lorg/w3c/dom/Node;
    .restart local v9       #child2:Lorg/w3c/dom/Node;
    .restart local v10       #children:Lorg/w3c/dom/NodeList;
    .restart local v11       #children2:Lorg/w3c/dom/NodeList;
    .restart local v14       #i:I
    .restart local v15       #j:I
    .restart local v16       #m:I
    .restart local v17       #mDoc:Lorg/w3c/dom/Document;
    .restart local v18       #mRoot:Lorg/w3c/dom/Node;
    .restart local v19       #n:I
    :cond_0
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v20

    const-string v21, "Off"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v20

    if-eqz v20, :cond_1

    .line 770
    const/16 v20, 0x0

    goto :goto_2

    .line 772
    :cond_1
    const/16 v20, 0x1

    goto :goto_2

    .line 763
    :cond_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 757
    .end local v9           #child2:Lorg/w3c/dom/Node;
    .end local v11           #children2:Lorg/w3c/dom/NodeList;
    .end local v15           #j:I
    .end local v16           #m:I
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 779
    .end local v7           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v8           #child:Lorg/w3c/dom/Node;
    .end local v10           #children:Lorg/w3c/dom/NodeList;
    .end local v14           #i:I
    .end local v17           #mDoc:Lorg/w3c/dom/Document;
    .end local v18           #mRoot:Lorg/w3c/dom/Node;
    .end local v19           #n:I
    :catch_0
    move-exception v20

    move-object/from16 v12, v20

    .line 780
    .local v12, ex:Ljavax/xml/parsers/ParserConfigurationException;
    const-string v20, "Launcher.SWidgetPkgMgr"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "ParserConfigurationException:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    .end local v12           #ex:Ljavax/xml/parsers/ParserConfigurationException;
    :cond_4
    :goto_3
    const/16 v20, 0x1

    goto :goto_2

    .line 781
    :catch_1
    move-exception v20

    move-object/from16 v12, v20

    .line 782
    .local v12, ex:Lorg/xml/sax/SAXException;
    const-string v20, "Launcher.SWidgetPkgMgr"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "SAXException: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 783
    .end local v12           #ex:Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v20

    move-object/from16 v12, v20

    .line 784
    .local v12, ex:Ljava/io/IOException;
    const-string v20, "Launcher.SWidgetPkgMgr"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "IOException: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private makeWidgetItem(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)[Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    .locals 19
    .parameter "context"
    .parameter "info"

    .prologue
    .line 405
    new-instance v6, Landroid/content/ComponentName;

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object v0, v6

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    .local v6, componentName:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mItemCache:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    .line 408
    .local v8, item:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    const/4 v14, 0x0

    .line 409
    .local v14, retArray:[Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    if-nez v8, :cond_a

    .line 410
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object v5, v0

    .line 411
    .local v5, bundle:Landroid/os/Bundle;
    if-eqz v5, :cond_8

    .line 412
    invoke-virtual {v5}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 413
    .local v12, keyset:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 414
    .local v11, keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 415
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 416
    .local v9, key:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v16

    const-string v17, "com.samsung.sec.android.SAMSUNG_WIDGET"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_0

    const-string v16, "com.samsung.sec.android.SAMSUNG_WIDGET"

    const/16 v17, 0x0

    const-string v18, "com.samsung.sec.android.SAMSUNG_WIDGET"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    move-object v0, v9

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 418
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 421
    .end local v9           #key:Ljava/lang/String;
    :cond_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 422
    .local v10, keySize:I
    if-lez v10, :cond_7

    .line 433
    new-array v14, v10, [Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    .line 435
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, v10, :cond_2

    .line 436
    const/16 v16, 0x0

    aput-object v16, v14, v7

    .line 435
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 439
    :cond_2
    const/4 v13, 0x0

    .end local v5           #bundle:Landroid/os/Bundle;
    .local v13, lp:I
    :goto_2
    if-ge v13, v10, :cond_5

    .line 440
    new-instance v15, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;-><init>(Ljava/lang/String;)V

    .line 442
    .local v15, widgetItem:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v15

    move-object/from16 v3, p2

    move-object v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->updateWidgetItemFromXml(Landroid/content/Context;Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;Landroid/content/pm/ResolveInfo;Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 443
    move-object v0, v15

    iget v0, v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mOrder:I

    move/from16 v16, v0

    if-ltz v16, :cond_4

    .line 444
    move-object v0, v15

    iget v0, v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mOrder:I

    move/from16 v16, v0

    aput-object v15, v14, v16

    .line 439
    :cond_3
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 446
    :cond_4
    aput-object v15, v14, v13

    goto :goto_3

    .line 450
    .end local v15           #widgetItem:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    :cond_5
    const/4 v7, 0x0

    :goto_4
    move-object v0, v14

    array-length v0, v0

    move/from16 v16, v0

    move v0, v7

    move/from16 v1, v16

    if-ge v0, v1, :cond_7

    .line 451
    aget-object v16, v14, v7

    if-eqz v16, :cond_6

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mItemCache:Ljava/util/HashMap;

    move-object/from16 v16, v0

    aget-object v17, v14, v7

    move-object/from16 v0, v16

    move-object v1, v6

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .end local v7           #i:I
    .end local v13           #lp:I
    :cond_7
    move-object/from16 v16, v14

    .line 470
    .end local v10           #keySize:I
    .end local v11           #keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12           #keyset:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_5
    return-object v16

    .line 459
    .restart local v5       #bundle:Landroid/os/Bundle;
    :cond_8
    new-instance v8, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    .end local v8           #item:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object v0, v8

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;-><init>(Ljava/lang/String;)V

    .line 460
    .restart local v8       #item:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v8

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->updateWidgetItem(Landroid/content/Context;Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;Landroid/content/pm/ResolveInfo;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mItemCache:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v6

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    move-object v14, v0

    .line 463
    const/16 v16, 0x0

    aput-object v8, v14, v16

    move-object/from16 v16, v14

    .line 464
    goto :goto_5

    .line 467
    :cond_9
    const/16 v16, 0x0

    goto :goto_5

    .end local v5           #bundle:Landroid/os/Bundle;
    :cond_a
    move-object/from16 v16, v14

    .line 470
    goto :goto_5
.end method

.method private declared-synchronized stopAndWaitForWidgetsLoader()V
    .locals 3

    .prologue
    .line 141
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mWidgetLoader:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mWidgetLoader:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mWidgetLoader:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mWidgetLoaderThread:Ljava/lang/Thread;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 156
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 152
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private unbindCachedIconDrawable(Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 735
    if-eqz p1, :cond_0

    .line 736
    iget-object v0, p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mWidgetIcon:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 738
    :cond_0
    return-void
.end method

.method private unbindCachedIconDrawables()V
    .locals 4

    .prologue
    .line 728
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mItemCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    .line 729
    .local v1, item:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    iget-object v2, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mWidgetIcon:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_0

    .line 732
    .end local v1           #item:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    :cond_0
    return-void
.end method

.method private updateWidgetItem(Landroid/content/Context;Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;Landroid/content/pm/ResolveInfo;)Z
    .locals 22
    .parameter "context"
    .parameter "item"
    .parameter "info"

    .prologue
    .line 474
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 476
    .local v9, manager:Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 478
    .local v3, c:Landroid/content/Context;
    :try_start_0
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x3

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 484
    :goto_0
    if-nez v3, :cond_0

    .line 485
    const/16 v18, 0x0

    .line 575
    :goto_1
    return v18

    .line 480
    :catch_0
    move-exception v18

    move-object/from16 v7, v18

    .line 481
    .local v7, e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 487
    .end local v7           #e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    .line 489
    .local v5, config:Landroid/content/res/Configuration;
    const/4 v11, 0x0

    .line 490
    .local v11, resClassName:I
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const-string v19, "plug_in_class"

    const-string v20, "array"

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v18 .. v21}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 494
    if-eqz v11, :cond_2

    .line 495
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    move v1, v11

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 500
    .local v4, classNames:[Ljava/lang/String;
    if-eqz v4, :cond_1

    move-object v0, v4

    array-length v0, v0

    move/from16 v18, v0

    if-lez v18, :cond_1

    const/16 v18, 0x0

    aget-object v18, v4, v18

    if-eqz v18, :cond_1

    const/16 v18, 0x0

    aget-object v18, v4, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_1

    const/16 v18, 0x0

    aget-object v18, v4, v18

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_3

    .line 502
    :cond_1
    const/16 v18, 0x0

    goto :goto_1

    .line 497
    .end local v4           #classNames:[Ljava/lang/String;
    :cond_2
    const/16 v18, 0x0

    goto :goto_1

    .line 505
    .restart local v4       #classNames:[Ljava/lang/String;
    :cond_3
    const/4 v14, 0x0

    .line 506
    .local v14, resPreview:I
    const/4 v15, 0x0

    .line 507
    .local v15, resWidth:I
    const/4 v12, 0x0

    .line 508
    .local v12, resHeight:I
    const/4 v13, 0x0

    .line 510
    .local v13, resName:I
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const-string v19, "preview"

    const-string v20, "drawable"

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v18 .. v21}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 512
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const-string v19, "min_width"

    const-string v20, "string"

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v18 .. v21}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 514
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const-string v19, "min_height"

    const-string v20, "string"

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v18 .. v21}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 516
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const-string v19, "plug_in_name"

    const-string v20, "string"

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v18 .. v21}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 519
    if-eqz v13, :cond_4

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v16, v18

    .line 521
    .local v16, title:Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/Utilities;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 523
    .local v8, icon:Landroid/graphics/drawable/Drawable;
    const/16 v18, 0x0

    aget-object v18, v4, v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mClassName:Ljava/lang/String;

    .line 524
    move-object v0, v8

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mWidgetIcon:Landroid/graphics/drawable/Drawable;

    .line 525
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mWidgetTitle:Ljava/lang/String;

    .line 526
    move v0, v14

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mWidgetPreview:I

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mMetrics:Landroid/util/DisplayMetrics;

    move-object v10, v0

    .line 530
    .local v10, metrics:Landroid/util/DisplayMetrics;
    iget v6, v5, Landroid/content/res/Configuration;->orientation:I

    .line 531
    .local v6, curOrientation:I
    const/16 v17, 0x2

    .line 532
    .local v17, tmpOrientation:I
    const/16 v18, 0x2

    move v0, v6

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 533
    if-eqz v15, :cond_5

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object v0, v10

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    :goto_3
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mHorizontalWidth:I

    .line 535
    if-eqz v12, :cond_6

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object v0, v10

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    :goto_4
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mHorizontalHeight:I

    .line 537
    const/16 v17, 0x1

    .line 545
    :goto_5
    move/from16 v0, v17

    move-object v1, v5

    iput v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 546
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    move-object/from16 v0, v18

    move-object v1, v5

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 548
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const-string v19, "min_width"

    const-string v20, "string"

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v18 .. v21}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 550
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const-string v19, "min_height"

    const-string v20, "string"

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v18 .. v21}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 553
    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    .line 554
    if-eqz v15, :cond_a

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object v0, v10

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    :goto_6
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mHorizontalWidth:I

    .line 556
    if-eqz v12, :cond_b

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object v0, v10

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    :goto_7
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mHorizontalHeight:I

    .line 565
    :goto_8
    iput v6, v5, Landroid/content/res/Configuration;->orientation:I

    .line 566
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    move-object/from16 v0, v18

    move-object v1, v5

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 575
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 519
    .end local v6           #curOrientation:I
    .end local v8           #icon:Landroid/graphics/drawable/Drawable;
    .end local v10           #metrics:Landroid/util/DisplayMetrics;
    .end local v16           #title:Ljava/lang/String;
    .end local v17           #tmpOrientation:I
    :cond_4
    move-object/from16 v0, p3

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v16, v18

    goto/16 :goto_2

    .line 533
    .restart local v6       #curOrientation:I
    .restart local v8       #icon:Landroid/graphics/drawable/Drawable;
    .restart local v10       #metrics:Landroid/util/DisplayMetrics;
    .restart local v16       #title:Ljava/lang/String;
    .restart local v17       #tmpOrientation:I
    :cond_5
    const/16 v18, 0x0

    goto/16 :goto_3

    .line 535
    :cond_6
    const/16 v18, 0x0

    goto/16 :goto_4

    .line 539
    :cond_7
    if-eqz v15, :cond_8

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object v0, v10

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    :goto_9
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mVerticalWidth:I

    .line 541
    if-eqz v12, :cond_9

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object v0, v10

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    :goto_a
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mVerticalHeight:I

    goto/16 :goto_5

    .line 539
    :cond_8
    const/16 v18, 0x0

    goto :goto_9

    .line 541
    :cond_9
    const/16 v18, 0x0

    goto :goto_a

    .line 554
    :cond_a
    const/16 v18, 0x0

    goto/16 :goto_6

    .line 556
    :cond_b
    const/16 v18, 0x0

    goto/16 :goto_7

    .line 559
    :cond_c
    if-eqz v15, :cond_d

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object v0, v10

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    :goto_b
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mVerticalWidth:I

    .line 561
    if-eqz v12, :cond_e

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object v0, v10

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    :goto_c
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mVerticalHeight:I

    goto/16 :goto_8

    .line 559
    :cond_d
    const/16 v18, 0x0

    goto :goto_b

    .line 561
    :cond_e
    const/16 v18, 0x0

    goto :goto_c
.end method

.method private updateWidgetItemFromXml(Landroid/content/Context;Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;Landroid/content/pm/ResolveInfo;Ljava/lang/String;)Z
    .locals 28
    .parameter "context"
    .parameter "item"
    .parameter "info"
    .parameter "key"

    .prologue
    .line 580
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 581
    .local v14, manager:Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    .line 583
    .local v4, c:Landroid/content/Context;
    :try_start_0
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x3

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 589
    :goto_0
    if-nez v4, :cond_0

    .line 590
    const/16 v25, 0x0

    .line 715
    :goto_1
    return v25

    .line 585
    :catch_0
    move-exception v25

    move-object/from16 v11, v25

    .line 586
    .local v11, e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v11}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 591
    .end local v11           #e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 592
    .local v7, cr:Landroid/content/res/Resources;
    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    .line 594
    .local v6, config:Landroid/content/res/Configuration;
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v25, v0

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v16

    .line 595
    .local v16, parser:Landroid/content/res/XmlResourceParser;
    if-nez v16, :cond_1

    .line 596
    const/16 v25, 0x0

    goto :goto_1

    .line 601
    :cond_1
    :try_start_1
    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v22

    .local v22, type:I
    const/16 v25, 0x2

    move/from16 v0, v22

    move/from16 v1, v25

    if-eq v0, v1, :cond_2

    const/16 v25, 0x1

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_1

    .line 610
    .end local v22           #type:I
    :cond_2
    :goto_2
    :try_start_2
    const-string v25, "plug_in_name"

    const-string v26, "string"

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object v0, v7

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 611
    .local v18, resName:I
    if-eqz v18, :cond_3

    move-object v0, v7

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v20, v25

    .line 614
    .local v20, title:Ljava/lang/String;
    :goto_3
    const/16 v25, 0x0

    const-string v26, "widgetId"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 617
    .local v23, widgetId:Ljava/lang/String;
    const/16 v25, 0x0

    const-string v26, "description"

    const/16 v27, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move/from16 v3, v27

    invoke-interface {v0, v1, v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9

    .line 618
    .local v9, description:I
    const/16 v25, 0x0

    const-string v26, "icon"

    const/16 v27, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move/from16 v3, v27

    invoke-interface {v0, v1, v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v13

    .line 621
    .local v13, icon:I
    const/16 v25, 0x0

    const-string v26, "themeName"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 624
    .local v19, themeName:Ljava/lang/String;
    const/16 v25, 0x0

    const-string v26, "preview"

    const/16 v27, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move/from16 v3, v27

    invoke-interface {v0, v1, v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v17

    .line 625
    .local v17, preview:I
    const/16 v25, 0x0

    const-string v26, "width"

    const/16 v27, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move/from16 v3, v27

    invoke-interface {v0, v1, v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v24

    .line 626
    .local v24, width:I
    const/16 v25, 0x0

    const-string v26, "height"

    const/16 v27, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move/from16 v3, v27

    invoke-interface {v0, v1, v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v12

    .line 627
    .local v12, height:I
    const/16 v25, 0x0

    const-string v26, "class"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v5

    .line 630
    .local v5, className:Ljava/lang/String;
    const/4 v15, 0x0

    .line 632
    .local v15, order:Ljava/lang/String;
    const/16 v25, 0x0

    :try_start_3
    const-string v26, "order"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v15

    .line 649
    :goto_4
    :try_start_4
    move-object/from16 v0, v23

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mWidgetId:Ljava/lang/String;

    .line 650
    move-object v0, v5

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mClassName:Ljava/lang/String;
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    .line 655
    :try_start_5
    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mWidgetIcon:Landroid/graphics/drawable/Drawable;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    .line 660
    :goto_5
    :try_start_6
    move-object/from16 v0, v20

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mWidgetTitle:Ljava/lang/String;

    .line 661
    move/from16 v0, v17

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mWidgetPreview:I

    .line 664
    if-lez v9, :cond_4

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    :goto_6
    move-object/from16 v0, v25

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mDescription:Ljava/lang/String;

    .line 665
    move-object/from16 v0, v19

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mThemeName:Ljava/lang/String;
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_4

    .line 671
    :try_start_7
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mOrder:I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_4

    .line 676
    :goto_7
    :try_start_8
    iget v8, v6, Landroid/content/res/Configuration;->orientation:I

    .line 677
    .local v8, curOrientation:I
    const/16 v21, 0x2

    .line 678
    .local v21, tmpOrientation:I
    const/16 v25, 0x2

    move v0, v8

    move/from16 v1, v25

    if-ne v0, v1, :cond_5

    .line 679
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mHorizontalWidth:I

    .line 680
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    move-object/from16 v0, v25

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mHorizontalHeight:I

    .line 681
    const/16 v21, 0x1

    .line 687
    :goto_8
    move/from16 v0, v21

    move-object v1, v6

    iput v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 688
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v26

    move-object/from16 v0, v25

    move-object v1, v6

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 690
    const/16 v25, 0x2

    move/from16 v0, v21

    move/from16 v1, v25

    if-ne v0, v1, :cond_6

    .line 691
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mHorizontalWidth:I

    .line 692
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    move-object/from16 v0, v25

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mHorizontalHeight:I

    .line 698
    :goto_9
    iput v8, v6, Landroid/content/res/Configuration;->orientation:I

    .line 699
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v26

    move-object/from16 v0, v25

    move-object v1, v6

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    :try_end_8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_4

    .line 715
    const/16 v25, 0x1

    goto/16 :goto_1

    .line 603
    .end local v5           #className:Ljava/lang/String;
    .end local v8           #curOrientation:I
    .end local v9           #description:I
    .end local v12           #height:I
    .end local v13           #icon:I
    .end local v15           #order:Ljava/lang/String;
    .end local v17           #preview:I
    .end local v18           #resName:I
    .end local v19           #themeName:Ljava/lang/String;
    .end local v20           #title:Ljava/lang/String;
    .end local v21           #tmpOrientation:I
    .end local v23           #widgetId:Ljava/lang/String;
    .end local v24           #width:I
    :catch_1
    move-exception v10

    .line 604
    .local v10, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v10}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto/16 :goto_2

    .line 605
    .end local v10           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v10

    .line 606
    .local v10, e:Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 611
    .end local v10           #e:Ljava/io/IOException;
    .restart local v18       #resName:I
    :cond_3
    :try_start_9
    move-object/from16 v0, p3

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v20, v25

    goto/16 :goto_3

    .line 656
    .restart local v5       #className:Ljava/lang/String;
    .restart local v9       #description:I
    .restart local v12       #height:I
    .restart local v13       #icon:I
    .restart local v15       #order:Ljava/lang/String;
    .restart local v17       #preview:I
    .restart local v19       #themeName:Ljava/lang/String;
    .restart local v20       #title:Ljava/lang/String;
    .restart local v23       #widgetId:Ljava/lang/String;
    .restart local v24       #width:I
    :catch_3
    move-exception v25

    move-object/from16 v10, v25

    .line 657
    .local v10, e:Ljava/lang/Exception;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f020051

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mWidgetIcon:Landroid/graphics/drawable/Drawable;
    :try_end_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_5

    .line 709
    .end local v5           #className:Ljava/lang/String;
    .end local v9           #description:I
    .end local v10           #e:Ljava/lang/Exception;
    .end local v12           #height:I
    .end local v13           #icon:I
    .end local v15           #order:Ljava/lang/String;
    .end local v17           #preview:I
    .end local v18           #resName:I
    .end local v19           #themeName:Ljava/lang/String;
    .end local v20           #title:Ljava/lang/String;
    .end local v23           #widgetId:Ljava/lang/String;
    .end local v24           #width:I
    :catch_4
    move-exception v25

    move-object/from16 v10, v25

    .line 710
    .local v10, e:Landroid/content/res/Resources$NotFoundException;
    const-string v25, "Launcher.SWidgetPkgMgr"

    const-string v26, "Resource not found exception :"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    invoke-virtual {v10}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    .line 712
    const/16 v25, 0x0

    goto/16 :goto_1

    .end local v10           #e:Landroid/content/res/Resources$NotFoundException;
    .restart local v5       #className:Ljava/lang/String;
    .restart local v9       #description:I
    .restart local v12       #height:I
    .restart local v13       #icon:I
    .restart local v15       #order:Ljava/lang/String;
    .restart local v17       #preview:I
    .restart local v18       #resName:I
    .restart local v19       #themeName:Ljava/lang/String;
    .restart local v20       #title:Ljava/lang/String;
    .restart local v23       #widgetId:Ljava/lang/String;
    .restart local v24       #width:I
    :cond_4
    move-object/from16 v25, v20

    .line 664
    goto/16 :goto_6

    .line 672
    :catch_5
    move-exception v25

    move-object/from16 v10, v25

    .line 673
    .local v10, e:Ljava/lang/NumberFormatException;
    const/16 v25, -0x1

    :try_start_a
    move/from16 v0, v25

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mOrder:I

    goto/16 :goto_7

    .line 683
    .end local v10           #e:Ljava/lang/NumberFormatException;
    .restart local v8       #curOrientation:I
    .restart local v21       #tmpOrientation:I
    :cond_5
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mVerticalWidth:I

    .line 684
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    move-object/from16 v0, v25

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mVerticalHeight:I

    goto/16 :goto_8

    .line 694
    :cond_6
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mVerticalWidth:I

    .line 695
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    move-object/from16 v0, v25

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mVerticalHeight:I
    :try_end_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_9

    .line 633
    .end local v8           #curOrientation:I
    .end local v21           #tmpOrientation:I
    :catch_6
    move-exception v25

    goto/16 :goto_4
.end method


# virtual methods
.method declared-synchronized addPackage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 162
    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 163
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->findWidgetForPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 164
    .local v4, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 165
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mWidgetLoader:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mWidgetLoader:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 166
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->scanPackage(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    .end local v4           #matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    monitor-exit p0

    return-void

    .line 170
    .restart local v4       #matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    :try_start_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 172
    .local v2, info:Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->makeWidgetItem(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)[Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    move-result-object v3

    .line 173
    .local v3, item:[Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    if-eqz v3, :cond_2

    .line 174
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_2

    .line 175
    aget-object v5, v3, v0

    if-eqz v5, :cond_3

    .line 176
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mSamsungAppWidgets:Ljava/util/ArrayList;

    aget-object v6, v3, v0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 162
    .end local v0           #i:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #info:Landroid/content/pm/ResolveInfo;
    .end local v3           #item:[Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    .end local v4           #matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public allocWidgetId()J
    .locals 2

    .prologue
    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 115
    .local v0, id:J
    return-wide v0
.end method

.method public createWidget(Landroid/content/Context;Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;)Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    .locals 2
    .parameter "context"
    .parameter "item"

    .prologue
    .line 314
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->allocWidgetId()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->makeSamsungWidget(Landroid/content/Context;Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;J)Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    move-result-object v0

    return-object v0
.end method

.method public createWidget(Landroid/content/Context;Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    .locals 2
    .parameter "context"
    .parameter "item"
    .parameter "info"

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->allocWidgetId()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1, p3}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->makeSamsungWidget(Landroid/content/Context;Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;JLcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    move-result-object v0

    return-object v0
.end method

.method public destroyWidget(Landroid/app/ActivityGroup;Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V
    .locals 5
    .parameter "group"
    .parameter "info"

    .prologue
    .line 323
    iget-wide v0, p2, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetId:J

    .line 324
    .local v0, widgetId:J
    invoke-virtual {p1}, Landroid/app/ActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/app/LocalActivityManager;->destroyActivity(Ljava/lang/String;Z)Landroid/view/Window;

    .line 325
    return-void
.end method

.method public findWidget(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    .locals 4
    .parameter "packageName"
    .parameter "className"
    .parameter "themeName"

    .prologue
    .line 351
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mSamsungAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 352
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 353
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mSamsungAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    .line 354
    .local v2, item:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    iget-object v3, v2, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mClassName:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 355
    if-eqz p3, :cond_0

    iget-object v3, v2, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mClassName:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 356
    iget-object v3, v2, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mThemeName:Ljava/lang/String;

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v2

    .line 363
    .end local v2           #item:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    :goto_1
    return-object v3

    .restart local v2       #item:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    :cond_0
    move-object v3, v2

    .line 359
    goto :goto_1

    .line 352
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 363
    .end local v2           #item:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getWidgetItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 245
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mSamsungAppWidgets:Ljava/util/ArrayList;

    return-object v0
.end method

.method public initInstance(Landroid/app/ActivityGroup;)V
    .locals 2
    .parameter "group"

    .prologue
    .line 106
    invoke-virtual {p1}, Landroid/app/ActivityGroup;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 107
    return-void
.end method

.method public isWidgetLoaded()Z
    .locals 1

    .prologue
    .line 336
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mIsWidgetLoaded:Z

    return v0
.end method

.method public pauseWidget(Landroid/app/ActivityGroup;Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V
    .locals 0
    .parameter "group"
    .parameter "info"

    .prologue
    .line 328
    invoke-virtual {p2, p1}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->fireOnPause(Landroid/content/Context;)V

    .line 329
    return-void
.end method

.method declared-synchronized removePackage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 187
    monitor-enter p0

    if-eqz p2, :cond_2

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 188
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mSamsungAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 190
    .local v1, count:I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .local v5, toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 192
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mSamsungAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    .line 193
    .local v4, item:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    iget-object v6, v4, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 194
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 198
    .end local v4           #item:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_3

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mWidgetLoader:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mWidgetLoader:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 199
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mItemCache:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 200
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->scanPackage(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v5           #toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;>;"
    :cond_2
    monitor-exit p0

    return-void

    .line 204
    .restart local v1       #count:I
    .restart local v2       #i:I
    .restart local v5       #toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;>;"
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mItemCache:Ljava/util/HashMap;

    .line 205
    .local v0, cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    .line 206
    .restart local v4       #item:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    invoke-direct {p0, v4}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->unbindCachedIconDrawable(Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;)V

    .line 207
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mSamsungAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 208
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v4, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mPackageName:Ljava/lang/String;

    iget-object v8, v4, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mClassName:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 187
    .end local v0           #cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;>;"
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #item:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    .end local v5           #toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;>;"
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public resumeWidget(Landroid/app/ActivityGroup;Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V
    .locals 0
    .parameter "group"
    .parameter "info"

    .prologue
    .line 332
    invoke-virtual {p2, p1}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->fireOnResume(Landroid/content/Context;)V

    .line 333
    return-void
.end method

.method declared-synchronized scanPackage(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 119
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mIsWidgetLoaded:Z

    .line 121
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->stopAndWaitForWidgetsLoader()V

    .line 123
    new-instance v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;-><init>(Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mWidgetLoader:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;

    .line 124
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mWidgetLoader:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;

    const-string v2, "SamsungWidgets Loader"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mWidgetLoaderThread:Ljava/lang/Thread;

    .line 125
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mWidgetLoaderThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    monitor-exit p0

    return-void

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized start(Landroid/content/Context;Z)V
    .locals 1
    .parameter "context"
    .parameter "localeChanged"

    .prologue
    .line 129
    monitor-enter p0

    if-nez p2, :cond_0

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mIsWidgetLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 138
    :goto_0
    monitor-exit p0

    return-void

    .line 132
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->stopAndWaitForWidgetsLoader()V

    .line 134
    if-eqz p2, :cond_1

    .line 135
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mItemCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 137
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->scanPackage(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unbind()V
    .locals 0

    .prologue
    .line 719
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->stopAndWaitForWidgetsLoader()V

    .line 720
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->unbindCachedIconDrawables()V

    .line 721
    return-void
.end method

.method declared-synchronized updatePackage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 216
    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mWidgetLoader:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mWidgetLoader:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 217
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->scanPackage(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 221
    :cond_1
    if-eqz p2, :cond_0

    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 222
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mSamsungAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 223
    .local v0, count:I
    const/4 v5, 0x0

    .line 224
    .local v5, matchItem:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 225
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mSamsungAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    .line 226
    .local v4, item:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    iget-object v7, v4, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 227
    move-object v5, v4

    .line 232
    .end local v4           #item:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    :cond_2
    if-eqz v5, :cond_0

    .line 233
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->findWidgetForPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 234
    .local v6, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 235
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 236
    .local v3, info:Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, p1, v5, v3}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->updateWidgetItem(Landroid/content/Context;Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;Landroid/content/pm/ResolveInfo;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_0

    .line 224
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #info:Landroid/content/pm/ResolveInfo;
    .end local v6           #matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v4       #item:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 216
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v4           #item:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    .end local v5           #matchItem:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method
