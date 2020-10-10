.class final synthetic Lcom/google/firebase/firestore/local/LruGarbageCollector$RollingSequenceNumberBuffer$$Lambda$1;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-firestore@@21.4.0"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field private static final instance:Lcom/google/firebase/firestore/local/LruGarbageCollector$RollingSequenceNumberBuffer$$Lambda$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/firestore/local/LruGarbageCollector$RollingSequenceNumberBuffer$$Lambda$1;

    invoke-direct {v0}, Lcom/google/firebase/firestore/local/LruGarbageCollector$RollingSequenceNumberBuffer$$Lambda$1;-><init>()V

    sput-object v0, Lcom/google/firebase/firestore/local/LruGarbageCollector$RollingSequenceNumberBuffer$$Lambda$1;->instance:Lcom/google/firebase/firestore/local/LruGarbageCollector$RollingSequenceNumberBuffer$$Lambda$1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lcom/google/firebase/firestore/local/LruGarbageCollector$RollingSequenceNumberBuffer$$Lambda$1;->instance:Lcom/google/firebase/firestore/local/LruGarbageCollector$RollingSequenceNumberBuffer$$Lambda$1;

    return-object v0
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/Long;

    check-cast p2, Ljava/lang/Long;

    invoke-static {p1, p2}, Lcom/google/firebase/firestore/local/LruGarbageCollector$RollingSequenceNumberBuffer;->lambda$static$0(Ljava/lang/Long;Ljava/lang/Long;)I

    move-result p1

    return p1
.end method
