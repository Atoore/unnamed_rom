.class public Landroid/hardware/usb/UsbDeviceConnection;
.super Ljava/lang/Object;
.source "UsbDeviceConnection.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UsbDeviceConnection"


# instance fields
.field private final mDevice:Landroid/hardware/usb/UsbDevice;

.field private mNativeContext:I


# direct methods
.method public constructor <init>(Landroid/hardware/usb/UsbDevice;)V
    .registers 2
    .parameter "device"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Landroid/hardware/usb/UsbDeviceConnection;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 44
    return-void
.end method

.method private native native_bulk_request(I[BII)I
.end method

.method private native native_claim_interface(IZ)Z
.end method

.method private native native_close()V
.end method

.method private native native_control_request(IIII[BII)I
.end method

.method private native native_get_fd()I
.end method

.method private native native_get_serial()Ljava/lang/String;
.end method

.method private native native_open(Ljava/lang/String;Ljava/io/FileDescriptor;)Z
.end method

.method private native native_release_interface(I)Z
.end method

.method private native native_request_wait()Landroid/hardware/usb/UsbRequest;
.end method


# virtual methods
.method public bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I
    .registers 6
    .parameter "endpoint"
    .parameter "buffer"
    .parameter "length"
    .parameter "timeout"

    .prologue
    .line 129
    invoke-virtual {p1}, Landroid/hardware/usb/UsbEndpoint;->getAddress()I

    move-result v0

    invoke-direct {p0, v0, p2, p3, p4}, Landroid/hardware/usb/UsbDeviceConnection;->native_bulk_request(I[BII)I

    move-result v0

    return v0
.end method

.method public claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z
    .registers 4
    .parameter "intf"
    .parameter "force"

    .prologue
    .line 81
    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getId()I

    move-result v0

    invoke-direct {p0, v0, p2}, Landroid/hardware/usb/UsbDeviceConnection;->native_claim_interface(IZ)Z

    move-result v0

    return v0
.end method

.method public close()V
    .registers 1

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/hardware/usb/UsbDeviceConnection;->native_close()V

    .line 58
    return-void
.end method

.method public controlTransfer(IIII[BII)I
    .registers 9
    .parameter "requestType"
    .parameter "request"
    .parameter "value"
    .parameter "index"
    .parameter "buffer"
    .parameter "length"
    .parameter "timeout"

    .prologue
    .line 114
    invoke-direct/range {p0 .. p7}, Landroid/hardware/usb/UsbDeviceConnection;->native_control_request(IIII[BII)I

    move-result v0

    return v0
.end method

.method public getFileDescriptor()I
    .registers 2

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/hardware/usb/UsbDeviceConnection;->native_get_fd()I

    move-result v0

    return v0
.end method

.method public getSerial()Ljava/lang/String;
    .registers 2

    .prologue
    .line 157
    invoke-direct {p0}, Landroid/hardware/usb/UsbDeviceConnection;->native_get_serial()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method open(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)Z
    .registers 4
    .parameter "name"
    .parameter "pfd"

    .prologue
    .line 47
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/hardware/usb/UsbDeviceConnection;->native_open(Ljava/lang/String;Ljava/io/FileDescriptor;)Z

    move-result v0

    return v0
.end method

.method public releaseInterface(Landroid/hardware/usb/UsbInterface;)Z
    .registers 3
    .parameter "intf"

    .prologue
    .line 90
    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/hardware/usb/UsbDeviceConnection;->native_release_interface(I)Z

    move-result v0

    return v0
.end method

.method public requestWait()Landroid/hardware/usb/UsbRequest;
    .registers 2

    .prologue
    .line 143
    invoke-direct {p0}, Landroid/hardware/usb/UsbDeviceConnection;->native_request_wait()Landroid/hardware/usb/UsbRequest;

    move-result-object v0

    .line 144
    .local v0, request:Landroid/hardware/usb/UsbRequest;
    if-eqz v0, :cond_9

    .line 145
    invoke-virtual {v0}, Landroid/hardware/usb/UsbRequest;->dequeue()V

    .line 147
    :cond_9
    return-object v0
.end method
