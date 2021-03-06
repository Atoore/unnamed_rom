.class public Lcom/android/internal/atfwd/AtCkpdCmdHandler;
.super Lcom/android/internal/atfwd/AtCmdBaseHandler;
.source "AtCkpdCmdHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;
    }
.end annotation


# static fields
.field private static final DEFAULT_PAUSE_TIME:I = 0x190

.field private static final DEFAULT_PRESS_TIME:I = 0xc8

.field private static final LOG_TAG:Ljava/lang/String; = "AtCkpdCmdHandler"

.field private static alphacode:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static key2keycode:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mEventQ:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;",
            ">;"
        }
    .end annotation
.end field

.field private mInjectThread:Ljava/lang/Thread;

.field mKcm:Landroid/view/KeyCharacterMap;

.field private mWm:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 13
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/atfwd/AtCmdHandler$AtCmdHandlerInstantiationException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x12

    const/16 v9, 0x11

    const/16 v8, 0xa

    const/16 v7, 0x9

    const/16 v6, 0x5b

    .line 161
    invoke-direct {p0, p1}, Lcom/android/internal/atfwd/AtCmdBaseHandler;-><init>(Landroid/content/Context;)V

    .line 162
    const-string/jumbo v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    .line 165
    .local v2, service:Landroid/view/IWindowManager;
    if-nez v2, :cond_22

    .line 166
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Unable to connect to Window Service"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 168
    :cond_22
    iput-object v2, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->mWm:Landroid/view/IWindowManager;

    .line 169
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->mEventQ:Ljava/util/LinkedList;

    .line 170
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->key2keycode:Ljava/util/HashMap;

    .line 171
    sget-object v3, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->key2keycode:Ljava/util/HashMap;

    const/16 v4, 0x23

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v3, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->key2keycode:Ljava/util/HashMap;

    const/16 v4, 0x2a

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v3, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->key2keycode:Ljava/util/HashMap;

    const/16 v4, 0x30

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    const/4 v5, 0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v3, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->key2keycode:Ljava/util/HashMap;

    const/16 v4, 0x31

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    const/16 v5, 0x8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v3, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->key2keycode:Ljava/util/HashMap;

    const/16 v4, 0x32

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v3, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->key2keycode:Ljava/util/HashMap;

    const/16 v4, 0x33

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v3, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->key2keycode:Ljava/util/HashMap;

    const/16 v4, 0x34

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    const/16 v5, 0xb

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v3, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->key2keycode:Ljava/util/HashMap;

    const/16 v4, 0x35

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    const/16 v5, 0xc

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v3, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->key2keycode:Ljava/util/HashMap;

    const/16 v4, 0x36

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    const/16 v5, 0xd

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v3, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->key2keycode:Ljava/util/HashMap;

    const/16 v4, 0x37

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    const/16 v5, 0xe

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v3, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->key2keycode:Ljava/util/HashMap;

    const/16 v4, 0x38

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    const/16 v5, 0xf

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v3, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->key2keycode:Ljava/util/HashMap;

    const/16 v4, 0x39

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v3, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->key2keycode:Ljava/util/HashMap;

    const/16 v4, 0x3c

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    const/16 v5, 0x15

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v3, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->key2keycode:Ljava/util/HashMap;

    const/16 v4, 0x3e

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    const/16 v5, 0x16

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v3, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->key2keycode:Ljava/util/HashMap;

    const/16 v4, 0x5e

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    const/16 v5, 0x13

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v3, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->key2keycode:Ljava/util/HashMap;

    const/16 v4, 0x56

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    const/16 v5, 0x14

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v3, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->key2keycode:Ljava/util/HashMap;

    const/16 v4, 0x44

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    const/16 v5, 0x19

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v3, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->key2keycode:Ljava/util/HashMap;

    const/16 v4, 0x45

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v3, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->key2keycode:Ljava/util/HashMap;

    const/16 v4, 0x4d

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    const/16 v5, 0x52

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v3, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->key2keycode:Ljava/util/HashMap;

    const/16 v4, 0x50

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    const/16 v5, 0x1a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v3, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->key2keycode:Ljava/util/HashMap;

    const/16 v4, 0x51

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v3, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->key2keycode:Ljava/util/HashMap;

    const/16 v4, 0x53

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v3, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->key2keycode:Ljava/util/HashMap;

    const/16 v4, 0x55

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    const/16 v5, 0x18

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v3, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->key2keycode:Ljava/util/HashMap;

    const/16 v4, 0x56

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    const/16 v5, 0x14

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v3, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->key2keycode:Ljava/util/HashMap;

    const/16 v4, 0x59

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    const/16 v5, 0x43

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v3, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->key2keycode:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v3, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->key2keycode:Ljava/util/HashMap;

    const/16 v4, 0x5d

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->alphacode:Ljava/util/HashMap;

    .line 200
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1f4
    const/16 v3, 0x1a

    if-ge v0, v3, :cond_20d

    .line 201
    sget-object v3, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->alphacode:Ljava/util/HashMap;

    add-int/lit8 v4, v0, 0x41

    int-to-char v4, v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f4

    .line 202
    :cond_20d
    const/4 v0, 0x0

    :goto_20e
    if-ge v0, v8, :cond_225

    .line 203
    sget-object v3, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->alphacode:Ljava/util/HashMap;

    add-int/lit8 v4, v0, 0x30

    int-to-char v4, v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    add-int/lit8 v5, v0, 0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    add-int/lit8 v0, v0, 0x1

    goto :goto_20e

    .line 204
    :cond_225
    sget-object v3, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->alphacode:Ljava/util/HashMap;

    const/16 v4, 0x40

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    const/16 v5, 0x4d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v3, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->alphacode:Ljava/util/HashMap;

    const/16 v4, 0x3d

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    const/16 v5, 0x46

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v3, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->alphacode:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    const/16 v5, 0x47

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v3, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->alphacode:Ljava/util/HashMap;

    const/16 v4, 0x2e

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    const/16 v5, 0x38

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v3, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->alphacode:Ljava/util/HashMap;

    const/16 v4, 0x2b

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    const/16 v5, 0x51

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v3, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->alphacode:Ljava/util/HashMap;

    const/16 v4, 0x23

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v3, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->alphacode:Ljava/util/HashMap;

    const/16 v4, 0x5d

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    const/16 v5, 0x48

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v3, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->alphacode:Ljava/util/HashMap;

    const/16 v4, 0x2f

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    const/16 v5, 0x4c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v3, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->alphacode:Ljava/util/HashMap;

    const/16 v4, 0x20

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    const/16 v5, 0x3e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v3, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->alphacode:Ljava/util/HashMap;

    const/16 v4, 0x2a

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v3, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->alphacode:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    const/16 v5, 0x3d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v1

    .line 216
    .local v1, kcm:Landroid/view/KeyCharacterMap;
    iput-object v1, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->mKcm:Landroid/view/KeyCharacterMap;

    .line 218
    new-instance v3, Lcom/android/internal/atfwd/AtCkpdCmdHandler$1;

    invoke-direct {v3, p0}, Lcom/android/internal/atfwd/AtCkpdCmdHandler$1;-><init>(Lcom/android/internal/atfwd/AtCkpdCmdHandler;)V

    iput-object v3, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->mInjectThread:Ljava/lang/Thread;

    .line 279
    iget-object v3, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->mInjectThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 280
    return-void
.end method

.method static synthetic access$000()Ljava/util/HashMap;
    .registers 1

    .prologue
    .line 56
    sget-object v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->key2keycode:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/atfwd/AtCkpdCmdHandler;)Ljava/util/LinkedList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->mEventQ:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/atfwd/AtCkpdCmdHandler;)Landroid/view/IWindowManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->mWm:Landroid/view/IWindowManager;

    return-object v0
.end method


# virtual methods
.method public getCommandName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 314
    const-string v0, "+CKPD"

    return-object v0
.end method

.method public handleCommand(Lcom/android/internal/atfwd/AtCmd;)Lcom/android/internal/atfwd/AtCmdResponse;
    .registers 13
    .parameter "cmd"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v8, "AtCkpdCmdHandler"

    .line 283
    const/4 v2, 0x0

    .line 284
    .local v2, ret:Lcom/android/internal/atfwd/AtCmdResponse;
    const/4 v4, 0x0

    .line 285
    .local v4, valid:Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;
    const/4 v0, 0x0

    .line 286
    .local v0, dead:Z
    const-string v6, "AtCkpdCmdHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleCommand: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v6, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->mInjectThread:Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Thread;->isAlive()Z

    move-result v6

    if-nez v6, :cond_55

    move v0, v10

    .line 289
    :goto_28
    if-nez v0, :cond_7e

    .line 295
    :try_start_2a
    new-instance v5, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;

    invoke-direct {v5, p0, p1}, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;-><init>(Lcom/android/internal/atfwd/AtCkpdCmdHandler;Lcom/android/internal/atfwd/AtCmd;)V
    :try_end_2f
    .catch Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException; {:try_start_2a .. :try_end_2f} :catch_86

    .line 296
    .end local v4           #valid:Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;
    .local v5, valid:Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;
    :try_start_2f
    new-instance v3, Lcom/android/internal/atfwd/AtCmdResponse;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {v3, v6, v7}, Lcom/android/internal/atfwd/AtCmdResponse;-><init>(ILjava/lang/String;)V
    :try_end_36
    .catch Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException; {:try_start_2f .. :try_end_36} :catch_89

    .line 297
    .end local v2           #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    .local v3, ret:Lcom/android/internal/atfwd/AtCmdResponse;
    :try_start_36
    const-string v6, "AtCkpdCmdHandler"

    const-string v7, "Queuing command"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v6, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->mEventQ:Ljava/util/LinkedList;

    monitor-enter v6
    :try_end_40
    .catch Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException; {:try_start_36 .. :try_end_40} :catch_5a

    .line 299
    :try_start_40
    iget-object v7, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->mEventQ:Ljava/util/LinkedList;

    invoke-virtual {v7, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 300
    iget-object v7, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->mEventQ:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/lang/Object;->notify()V

    .line 301
    monitor-exit v6
    :try_end_4b
    .catchall {:try_start_40 .. :try_end_4b} :catchall_57

    .line 302
    :try_start_4b
    const-string v6, "AtCkpdCmdHandler"

    const-string v7, "Command queued"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52
    .catch Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException; {:try_start_4b .. :try_end_52} :catch_5a

    move-object v4, v5

    .end local v5           #valid:Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;
    .restart local v4       #valid:Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;
    move-object v2, v3

    .line 310
    .end local v3           #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    .restart local v2       #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    :goto_54
    return-object v2

    :cond_55
    move v0, v9

    .line 288
    goto :goto_28

    .line 301
    .end local v2           #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    .end local v4           #valid:Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;
    .restart local v3       #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    .restart local v5       #valid:Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;
    :catchall_57
    move-exception v7

    :try_start_58
    monitor-exit v6
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    :try_start_59
    throw v7
    :try_end_5a
    .catch Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException; {:try_start_59 .. :try_end_5a} :catch_5a

    .line 303
    :catch_5a
    move-exception v6

    move-object v1, v6

    move-object v4, v5

    .end local v5           #valid:Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;
    .restart local v4       #valid:Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;
    move-object v2, v3

    .line 304
    .end local v3           #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    .local v1, e:Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;
    .restart local v2       #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    :goto_5e
    const-string v6, "AtCkpdCmdHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error parsing command "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    new-instance v2, Lcom/android/internal/atfwd/AtCmdResponse;

    .end local v2           #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    const-string v6, "+CME ERROR: 25"

    invoke-direct {v2, v9, v6}, Lcom/android/internal/atfwd/AtCmdResponse;-><init>(ILjava/lang/String;)V

    .line 306
    .restart local v2       #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    goto :goto_54

    .line 308
    .end local v1           #e:Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;
    :cond_7e
    new-instance v2, Lcom/android/internal/atfwd/AtCmdResponse;

    .end local v2           #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    const-string v6, "+CME ERROR: 1"

    invoke-direct {v2, v9, v6}, Lcom/android/internal/atfwd/AtCmdResponse;-><init>(ILjava/lang/String;)V

    .restart local v2       #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    goto :goto_54

    .line 303
    :catch_86
    move-exception v6

    move-object v1, v6

    goto :goto_5e

    .end local v4           #valid:Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;
    .restart local v5       #valid:Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;
    :catch_89
    move-exception v6

    move-object v1, v6

    move-object v4, v5

    .end local v5           #valid:Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;
    .restart local v4       #valid:Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;
    goto :goto_5e
.end method
