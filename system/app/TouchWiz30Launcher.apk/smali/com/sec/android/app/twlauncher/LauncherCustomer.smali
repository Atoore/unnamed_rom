.class public Lcom/sec/android/app/twlauncher/LauncherCustomer;
.super Ljava/lang/Object;
.source "LauncherCustomer.java"


# static fields
.field private static mCustomerCount:I

.field private static mCustomerList:Lorg/w3c/dom/NodeList;

.field private static mCustomerNode:Lorg/w3c/dom/Node;

.field private static mDoc:Lorg/w3c/dom/Document;

.field private static mRoot:Lorg/w3c/dom/Node;

.field private static sInstance:Lcom/sec/android/app/twlauncher/LauncherCustomer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/sec/android/app/twlauncher/LauncherCustomer;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/LauncherCustomer;-><init>()V

    sput-object v0, Lcom/sec/android/app/twlauncher/LauncherCustomer;->sInstance:Lcom/sec/android/app/twlauncher/LauncherCustomer;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const-string v0, "customer.xml"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/twlauncher/LauncherCustomer;->loadXMLFile(Ljava/lang/String;I)V

    .line 101
    return-void
.end method

.method public static getInstance(Ljava/lang/String;I)Lcom/sec/android/app/twlauncher/LauncherCustomer;
    .locals 2
    .parameter "fileName"
    .parameter "mode"

    .prologue
    .line 104
    if-nez p0, :cond_0

    .line 105
    sget-object v0, Lcom/sec/android/app/twlauncher/LauncherCustomer;->sInstance:Lcom/sec/android/app/twlauncher/LauncherCustomer;

    const-string v1, "customer.xml"

    invoke-direct {v0, v1, p1}, Lcom/sec/android/app/twlauncher/LauncherCustomer;->loadXMLFile(Ljava/lang/String;I)V

    .line 108
    :goto_0
    sget-object v0, Lcom/sec/android/app/twlauncher/LauncherCustomer;->sInstance:Lcom/sec/android/app/twlauncher/LauncherCustomer;

    return-object v0

    .line 107
    :cond_0
    sget-object v0, Lcom/sec/android/app/twlauncher/LauncherCustomer;->sInstance:Lcom/sec/android/app/twlauncher/LauncherCustomer;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/twlauncher/LauncherCustomer;->loadXMLFile(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private getTagCount(Lorg/w3c/dom/NodeList;)I
    .locals 1
    .parameter "list"

    .prologue
    .line 185
    const/4 v0, 0x0

    .line 186
    .local v0, count:I
    if-eqz p1, :cond_0

    .line 187
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    .line 188
    :cond_0
    return v0
.end method

.method private getTagList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 7
    .parameter "parent"
    .parameter "name"

    .prologue
    .line 159
    sget-object v5, Lcom/sec/android/app/twlauncher/LauncherCustomer;->mDoc:Lorg/w3c/dom/Document;

    if-eqz v5, :cond_0

    if-nez p1, :cond_1

    .line 160
    :cond_0
    const/4 v5, 0x0

    .line 174
    :goto_0
    return-object v5

    .line 162
    :cond_1
    sget-object v5, Lcom/sec/android/app/twlauncher/LauncherCustomer;->mDoc:Lorg/w3c/dom/Document;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 163
    .local v3, list:Lorg/w3c/dom/Element;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 164
    .local v1, children:Lorg/w3c/dom/NodeList;
    if-eqz v1, :cond_3

    .line 165
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    .line 166
    .local v4, n:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v4, :cond_3

    .line 167
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 168
    .local v0, child:Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 169
    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 166
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 174
    .end local v0           #child:Lorg/w3c/dom/Node;
    .end local v2           #i:I
    .end local v4           #n:I
    :cond_3
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    goto :goto_0
.end method

.method private getTagNode(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 5
    .parameter "tagFullName"

    .prologue
    const/4 v4, 0x0

    .line 129
    sget-object v3, Lcom/sec/android/app/twlauncher/LauncherCustomer;->mRoot:Lorg/w3c/dom/Node;

    if-nez v3, :cond_0

    move-object v3, v4

    .line 142
    :goto_0
    return-object v3

    .line 132
    :cond_0
    sget-object v0, Lcom/sec/android/app/twlauncher/LauncherCustomer;->mRoot:Lorg/w3c/dom/Node;

    .line 133
    .local v0, node:Lorg/w3c/dom/Node;
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, "."

    invoke-direct {v2, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .local v2, tokenizer:Ljava/util/StringTokenizer;
    :goto_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 136
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, tagName:Ljava/lang/String;
    if-nez v0, :cond_1

    move-object v3, v4

    .line 138
    goto :goto_0

    .line 139
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/twlauncher/LauncherCustomer;->getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 140
    goto :goto_1

    .end local v1           #tagName:Ljava/lang/String;
    :cond_2
    move-object v3, v0

    .line 142
    goto :goto_0
.end method

.method private getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 5
    .parameter "parent"
    .parameter "tagName"

    .prologue
    .line 146
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 147
    .local v1, children:Lorg/w3c/dom/NodeList;
    if-eqz v1, :cond_1

    .line 148
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .line 149
    .local v3, n:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 150
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 151
    .local v0, child:Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v0

    .line 155
    .end local v0           #child:Lorg/w3c/dom/Node;
    .end local v2           #i:I
    .end local v3           #n:I
    :goto_1
    return-object v4

    .line 149
    .restart local v0       #child:Lorg/w3c/dom/Node;
    .restart local v2       #i:I
    .restart local v3       #n:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 155
    .end local v0           #child:Lorg/w3c/dom/Node;
    .end local v2           #i:I
    .end local v3           #n:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private getTagValue(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 1
    .parameter "node"

    .prologue
    .line 178
    if-nez p1, :cond_0

    .line 179
    const/4 v0, 0x0

    .line 181
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private initLauncherCustomer()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 192
    sput-object v0, Lcom/sec/android/app/twlauncher/LauncherCustomer;->mCustomerNode:Lorg/w3c/dom/Node;

    .line 193
    sput-object v0, Lcom/sec/android/app/twlauncher/LauncherCustomer;->mCustomerList:Lorg/w3c/dom/NodeList;

    .line 194
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/twlauncher/LauncherCustomer;->mCustomerCount:I

    .line 195
    return-void
.end method

.method private loadXMLFile(Ljava/lang/String;I)V
    .locals 7
    .parameter "fileName"
    .parameter "mode"

    .prologue
    const-string v6, "Launcher.LauncherCustomer"

    .line 113
    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherCustomer;->initLauncherCustomer()V

    .line 114
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 115
    .local v2, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 116
    .local v0, builder:Ljavax/xml/parsers/DocumentBuilder;
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/system/csc/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v3

    sput-object v3, Lcom/sec/android/app/twlauncher/LauncherCustomer;->mDoc:Lorg/w3c/dom/Document;

    .line 117
    sget-object v3, Lcom/sec/android/app/twlauncher/LauncherCustomer;->mDoc:Lorg/w3c/dom/Document;

    invoke-interface {v3}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v3

    sput-object v3, Lcom/sec/android/app/twlauncher/LauncherCustomer;->mRoot:Lorg/w3c/dom/Node;

    .line 118
    invoke-direct {p0, p2}, Lcom/sec/android/app/twlauncher/LauncherCustomer;->setLauncherCustomer(I)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 126
    .end local v0           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v2           #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 120
    .local v1, ex:Ljavax/xml/parsers/ParserConfigurationException;
    const-string v3, "Launcher.LauncherCustomer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ParserConfigurationException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 121
    .end local v1           #ex:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 122
    .local v1, ex:Lorg/xml/sax/SAXException;
    const-string v3, "Launcher.LauncherCustomer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SAXException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 123
    .end local v1           #ex:Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v3

    move-object v1, v3

    .line 124
    .local v1, ex:Ljava/io/IOException;
    const-string v3, "Launcher.LauncherCustomer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setLauncherCustomer(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 200
    if-nez p1, :cond_1

    .line 201
    const-string v0, "Settings.Main.Display"

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherCustomer;->getTagNode(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/twlauncher/LauncherCustomer;->mCustomerNode:Lorg/w3c/dom/Node;

    .line 202
    sget-object v0, Lcom/sec/android/app/twlauncher/LauncherCustomer;->mCustomerNode:Lorg/w3c/dom/Node;

    const-string v1, "Wallpaper"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/twlauncher/LauncherCustomer;->getTagList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/twlauncher/LauncherCustomer;->mCustomerList:Lorg/w3c/dom/NodeList;

    .line 203
    sget-object v0, Lcom/sec/android/app/twlauncher/LauncherCustomer;->mCustomerList:Lorg/w3c/dom/NodeList;

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherCustomer;->getTagCount(Lorg/w3c/dom/NodeList;)I

    move-result v0

    sput v0, Lcom/sec/android/app/twlauncher/LauncherCustomer;->mCustomerCount:I

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 205
    const-string v0, "Launcher"

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherCustomer;->getTagNode(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/twlauncher/LauncherCustomer;->mCustomerNode:Lorg/w3c/dom/Node;

    .line 206
    sget-object v0, Lcom/sec/android/app/twlauncher/LauncherCustomer;->mCustomerNode:Lorg/w3c/dom/Node;

    const-string v1, "favorites"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/twlauncher/LauncherCustomer;->getTagList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/twlauncher/LauncherCustomer;->mCustomerList:Lorg/w3c/dom/NodeList;

    .line 207
    sget-object v0, Lcom/sec/android/app/twlauncher/LauncherCustomer;->mCustomerList:Lorg/w3c/dom/NodeList;

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherCustomer;->getTagCount(Lorg/w3c/dom/NodeList;)I

    move-result v0

    sput v0, Lcom/sec/android/app/twlauncher/LauncherCustomer;->mCustomerCount:I

    goto :goto_0
.end method


# virtual methods
.method public getCustomerCount()I
    .locals 1

    .prologue
    .line 244
    sget v0, Lcom/sec/android/app/twlauncher/LauncherCustomer;->mCustomerCount:I

    return v0
.end method

.method public getCustomerFavoriteInfo(I[Ljava/lang/String;)V
    .locals 3
    .parameter "i"
    .parameter "favoritesInfo"

    .prologue
    .line 358
    sget-object v1, Lcom/sec/android/app/twlauncher/LauncherCustomer;->mCustomerList:Lorg/w3c/dom/NodeList;

    invoke-interface {v1, p1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 360
    .local v0, node:Lorg/w3c/dom/Node;
    if-nez v0, :cond_0

    .line 372
    :goto_0
    return-void

    .line 364
    :cond_0
    const/4 v1, 0x0

    const-string v2, "favorite_type"

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/twlauncher/LauncherCustomer;->getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/LauncherCustomer;->getTagValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v1

    .line 365
    const/4 v1, 0x1

    const-string v2, "packageName"

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/twlauncher/LauncherCustomer;->getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/LauncherCustomer;->getTagValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v1

    .line 366
    const/4 v1, 0x2

    const-string v2, "className"

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/twlauncher/LauncherCustomer;->getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/LauncherCustomer;->getTagValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v1

    .line 367
    const/4 v1, 0x3

    const-string v2, "screen"

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/twlauncher/LauncherCustomer;->getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/LauncherCustomer;->getTagValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v1

    .line 368
    const/4 v1, 0x4

    const-string v2, "launcher_x"

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/twlauncher/LauncherCustomer;->getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/LauncherCustomer;->getTagValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v1

    .line 369
    const/4 v1, 0x5

    const-string v2, "launcher_y"

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/twlauncher/LauncherCustomer;->getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/LauncherCustomer;->getTagValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v1

    .line 370
    const/4 v1, 0x6

    const-string v2, "launcher_spanX"

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/twlauncher/LauncherCustomer;->getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/LauncherCustomer;->getTagValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v1

    .line 371
    const/4 v1, 0x7

    const-string v2, "launcher_spanY"

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/twlauncher/LauncherCustomer;->getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/LauncherCustomer;->getTagValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v1

    goto :goto_0
.end method
