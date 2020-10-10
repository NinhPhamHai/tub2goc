.class public Lcom/google/firebase/storage/StorageException;
.super Lcom/google/firebase/FirebaseException;
.source "com.google.firebase:firebase-storage@@19.1.1"


# instance fields
.field private cause:Ljava/lang/Throwable;

.field private final errorCode:I

.field private final httpResultCode:I


# direct methods
.method constructor <init>(ILjava/lang/Throwable;I)V
    .locals 1

    .line 48
    invoke-static {p1}, Lcom/google/firebase/storage/StorageException;->getErrorMessageForCode(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/FirebaseException;-><init>(Ljava/lang/String;)V

    .line 50
    iput-object p2, p0, Lcom/google/firebase/storage/StorageException;->cause:Ljava/lang/Throwable;

    .line 51
    iput p1, p0, Lcom/google/firebase/storage/StorageException;->errorCode:I

    .line 52
    iput p3, p0, Lcom/google/firebase/storage/StorageException;->httpResultCode:I

    .line 53
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "StorageException has occurred.\n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-static {p1}, Lcom/google/firebase/storage/StorageException;->getErrorMessageForCode(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n Code: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/google/firebase/storage/StorageException;->errorCode:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " HttpResult: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/google/firebase/storage/StorageException;->httpResultCode:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "StorageException"

    .line 53
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object p1, p0, Lcom/google/firebase/storage/StorageException;->cause:Ljava/lang/Throwable;

    if-eqz p1, :cond_0

    .line 62
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/google/firebase/storage/StorageException;->cause:Ljava/lang/Throwable;

    invoke-static {p2, p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method private static calculateErrorCode(Lcom/google/android/gms/common/api/Status;)I
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/Status;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, -0x32f0

    return p0

    .line 70
    :cond_0
    sget-object v0, Lcom/google/android/gms/common/api/Status;->RESULT_TIMEOUT:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/Status;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, -0x32e6

    return p0

    :cond_1
    const/16 p0, -0x32c8

    return p0
.end method

.method private static calculateErrorCode(Ljava/lang/Throwable;I)I
    .locals 0

    .line 77
    instance-of p0, p0, Lcom/google/firebase/storage/CancelException;

    if-eqz p0, :cond_0

    const/16 p0, -0x32f0

    return p0

    :cond_0
    const/4 p0, -0x2

    if-eq p1, p0, :cond_5

    const/16 p0, 0x191

    if-eq p1, p0, :cond_4

    const/16 p0, 0x199

    if-eq p1, p0, :cond_3

    const/16 p0, 0x193

    if-eq p1, p0, :cond_2

    const/16 p0, 0x194

    if-eq p1, p0, :cond_1

    const/16 p0, -0x32c8

    return p0

    :cond_1
    const/16 p0, -0x32d2

    return p0

    :cond_2
    const/16 p0, -0x32dd

    return p0

    :cond_3
    const/16 p0, -0x32e7

    return p0

    :cond_4
    const/16 p0, -0x32dc

    return p0

    :cond_5
    const/16 p0, -0x32e6

    return p0
.end method

.method public static fromErrorStatus(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/storage/StorageException;
    .locals 3

    .line 98
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 100
    new-instance v0, Lcom/google/firebase/storage/StorageException;

    invoke-static {p0}, Lcom/google/firebase/storage/StorageException;->calculateErrorCode(Lcom/google/android/gms/common/api/Status;)I

    move-result p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/firebase/storage/StorageException;-><init>(ILjava/lang/Throwable;I)V

    return-object v0
.end method

.method public static fromExceptionAndHttpCode(Ljava/lang/Throwable;I)Lcom/google/firebase/storage/StorageException;
    .locals 2

    .line 106
    instance-of v0, p0, Lcom/google/firebase/storage/StorageException;

    if-eqz v0, :cond_0

    .line 107
    check-cast p0, Lcom/google/firebase/storage/StorageException;

    return-object p0

    .line 109
    :cond_0
    invoke-static {p1}, Lcom/google/firebase/storage/StorageException;->isResultSuccess(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 112
    :cond_1
    new-instance v0, Lcom/google/firebase/storage/StorageException;

    .line 113
    invoke-static {p0, p1}, Lcom/google/firebase/storage/StorageException;->calculateErrorCode(Ljava/lang/Throwable;I)I

    move-result v1

    invoke-direct {v0, v1, p0, p1}, Lcom/google/firebase/storage/StorageException;-><init>(ILjava/lang/Throwable;I)V

    return-object v0
.end method

.method static getErrorMessageForCode(I)Ljava/lang/String;
    .locals 2

    const/16 v0, -0x32f0

    if-eq p0, v0, :cond_5

    const/16 v0, -0x32c8

    const-string v1, "An unknown error occurred, please check the HTTP result code and inner exception for server response."

    if-eq p0, v0, :cond_4

    const/16 v0, -0x32e7

    if-eq p0, v0, :cond_3

    const/16 v0, -0x32e6

    if-eq p0, v0, :cond_2

    const/16 v0, -0x32dd

    if-eq p0, v0, :cond_1

    const/16 v0, -0x32dc

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    return-object v1

    :pswitch_0
    const-string p0, "Object does not exist at location."

    return-object p0

    :pswitch_1
    const-string p0, "Bucket does not exist."

    return-object p0

    :pswitch_2
    const-string p0, "Project does not exist."

    return-object p0

    :pswitch_3
    const-string p0, "Quota for bucket exceeded, please view quota on www.firebase.google.com/storage."

    return-object p0

    :cond_0
    const-string p0, "User is not authenticated, please authenticate using Firebase Authentication and try again."

    return-object p0

    :cond_1
    const-string p0, "User does not have permission to access this object."

    return-object p0

    :cond_2
    const-string p0, "The operation retry limit has been exceeded."

    return-object p0

    :cond_3
    const-string p0, "Object has a checksum which does not match. Please retry the operation."

    return-object p0

    :cond_4
    return-object v1

    :cond_5
    const-string p0, "The operation was cancelled."

    return-object p0

    :pswitch_data_0
    .packed-switch -0x32d5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static isResultSuccess(I)Z
    .locals 1

    if-eqz p0, :cond_1

    const/16 v0, 0xc8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x12c

    if-ge p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public declared-synchronized getCause()Ljava/lang/Throwable;
    .locals 1

    monitor-enter p0

    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/storage/StorageException;->cause:Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 163
    monitor-exit p0

    return-object v0

    .line 165
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/storage/StorageException;->cause:Ljava/lang/Throwable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method