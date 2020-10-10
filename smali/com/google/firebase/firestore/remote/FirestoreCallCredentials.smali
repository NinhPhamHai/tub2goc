.class final Lcom/google/firebase/firestore/remote/FirestoreCallCredentials;
.super Lio/grpc/CallCredentials;
.source "com.google.firebase:firebase-firestore@@21.4.0"


# static fields
.field private static final AUTHORIZATION_HEADER:Lio/grpc/Metadata$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Metadata$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final credentialsProvider:Lcom/google/firebase/firestore/auth/CredentialsProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    sget-object v0, Lio/grpc/Metadata;->ASCII_STRING_MARSHALLER:Lio/grpc/Metadata$AsciiMarshaller;

    const-string v1, "Authorization"

    .line 32
    invoke-static {v1, v0}, Lio/grpc/Metadata$Key;->of(Ljava/lang/String;Lio/grpc/Metadata$AsciiMarshaller;)Lio/grpc/Metadata$Key;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/firestore/remote/FirestoreCallCredentials;->AUTHORIZATION_HEADER:Lio/grpc/Metadata$Key;

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/firestore/auth/CredentialsProvider;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lio/grpc/CallCredentials;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/google/firebase/firestore/remote/FirestoreCallCredentials;->credentialsProvider:Lcom/google/firebase/firestore/auth/CredentialsProvider;

    return-void
.end method

.method static synthetic lambda$applyRequestMetadata$0(Lio/grpc/CallCredentials$MetadataApplier;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 52
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "FirestoreCallCredentials"

    const-string v2, "Successfully fetched token."

    invoke-static {v1, v2, v0}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    new-instance v0, Lio/grpc/Metadata;

    invoke-direct {v0}, Lio/grpc/Metadata;-><init>()V

    if-eqz p1, :cond_0

    .line 55
    sget-object v1, Lcom/google/firebase/firestore/remote/FirestoreCallCredentials;->AUTHORIZATION_HEADER:Lio/grpc/Metadata$Key;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bearer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lio/grpc/Metadata;->put(Lio/grpc/Metadata$Key;Ljava/lang/Object;)V

    .line 57
    :cond_0
    invoke-virtual {p0, v0}, Lio/grpc/CallCredentials$MetadataApplier;->apply(Lio/grpc/Metadata;)V

    return-void
.end method

.method static synthetic lambda$applyRequestMetadata$1(Lio/grpc/CallCredentials$MetadataApplier;Ljava/lang/Exception;)V
    .locals 3

    .line 62
    instance-of v0, p1, Lcom/google/firebase/FirebaseApiNotAvailableException;

    const/4 v1, 0x0

    const-string v2, "FirestoreCallCredentials"

    if-eqz v0, :cond_0

    .line 63
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "Firebase Auth API not available, not using authentication."

    invoke-static {v2, v0, p1}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    new-instance p1, Lio/grpc/Metadata;

    invoke-direct {p1}, Lio/grpc/Metadata;-><init>()V

    invoke-virtual {p0, p1}, Lio/grpc/CallCredentials$MetadataApplier;->apply(Lio/grpc/Metadata;)V

    goto :goto_0

    .line 65
    :cond_0
    instance-of v0, p1, Lcom/google/firebase/internal/api/FirebaseNoSignedInUserException;

    if-eqz v0, :cond_1

    .line 66
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "No user signed in, not using authentication."

    invoke-static {v2, v0, p1}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    new-instance p1, Lio/grpc/Metadata;

    invoke-direct {p1}, Lio/grpc/Metadata;-><init>()V

    invoke-virtual {p0, p1}, Lio/grpc/CallCredentials$MetadataApplier;->apply(Lio/grpc/Metadata;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 69
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string v1, "Failed to get token: %s."

    invoke-static {v2, v1, v0}, Lcom/google/firebase/firestore/util/Logger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    sget-object v0, Lio/grpc/Status;->UNAUTHENTICATED:Lio/grpc/Status;

    invoke-virtual {v0, p1}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/CallCredentials$MetadataApplier;->fail(Lio/grpc/Status;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public applyRequestMetadata(Lio/grpc/CallCredentials$RequestInfo;Ljava/util/concurrent/Executor;Lio/grpc/CallCredentials$MetadataApplier;)V
    .locals 1

    .line 47
    iget-object p1, p0, Lcom/google/firebase/firestore/remote/FirestoreCallCredentials;->credentialsProvider:Lcom/google/firebase/firestore/auth/CredentialsProvider;

    .line 48
    invoke-virtual {p1}, Lcom/google/firebase/firestore/auth/CredentialsProvider;->getToken()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    invoke-static {p3}, Lcom/google/firebase/firestore/remote/FirestoreCallCredentials$$Lambda$1;->lambdaFactory$(Lio/grpc/CallCredentials$MetadataApplier;)Lcom/google/android/gms/tasks/OnSuccessListener;

    move-result-object v0

    .line 49
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    invoke-static {p3}, Lcom/google/firebase/firestore/remote/FirestoreCallCredentials$$Lambda$2;->lambdaFactory$(Lio/grpc/CallCredentials$MetadataApplier;)Lcom/google/android/gms/tasks/OnFailureListener;

    move-result-object p3

    .line 59
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
