.class public final enum Lcom/google/firebase/firestore/model/Document$DocumentState;
.super Ljava/lang/Enum;
.source "com.google.firebase:firebase-firestore@@21.4.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/model/Document;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DocumentState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/firestore/model/Document$DocumentState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/firestore/model/Document$DocumentState;

.field public static final enum COMMITTED_MUTATIONS:Lcom/google/firebase/firestore/model/Document$DocumentState;

.field public static final enum LOCAL_MUTATIONS:Lcom/google/firebase/firestore/model/Document$DocumentState;

.field public static final enum SYNCED:Lcom/google/firebase/firestore/model/Document$DocumentState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 38
    new-instance v0, Lcom/google/firebase/firestore/model/Document$DocumentState;

    const/4 v1, 0x0

    const-string v2, "LOCAL_MUTATIONS"

    invoke-direct {v0, v2, v1}, Lcom/google/firebase/firestore/model/Document$DocumentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/firestore/model/Document$DocumentState;->LOCAL_MUTATIONS:Lcom/google/firebase/firestore/model/Document$DocumentState;

    .line 40
    new-instance v0, Lcom/google/firebase/firestore/model/Document$DocumentState;

    const/4 v2, 0x1

    const-string v3, "COMMITTED_MUTATIONS"

    invoke-direct {v0, v3, v2}, Lcom/google/firebase/firestore/model/Document$DocumentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/firestore/model/Document$DocumentState;->COMMITTED_MUTATIONS:Lcom/google/firebase/firestore/model/Document$DocumentState;

    .line 42
    new-instance v0, Lcom/google/firebase/firestore/model/Document$DocumentState;

    const/4 v3, 0x2

    const-string v4, "SYNCED"

    invoke-direct {v0, v4, v3}, Lcom/google/firebase/firestore/model/Document$DocumentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/firestore/model/Document$DocumentState;->SYNCED:Lcom/google/firebase/firestore/model/Document$DocumentState;

    const/4 v0, 0x3

    .line 36
    new-array v0, v0, [Lcom/google/firebase/firestore/model/Document$DocumentState;

    sget-object v4, Lcom/google/firebase/firestore/model/Document$DocumentState;->LOCAL_MUTATIONS:Lcom/google/firebase/firestore/model/Document$DocumentState;

    aput-object v4, v0, v1

    sget-object v1, Lcom/google/firebase/firestore/model/Document$DocumentState;->COMMITTED_MUTATIONS:Lcom/google/firebase/firestore/model/Document$DocumentState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/firebase/firestore/model/Document$DocumentState;->SYNCED:Lcom/google/firebase/firestore/model/Document$DocumentState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/firebase/firestore/model/Document$DocumentState;->$VALUES:[Lcom/google/firebase/firestore/model/Document$DocumentState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/firestore/model/Document$DocumentState;
    .locals 1

    .line 36
    const-class v0, Lcom/google/firebase/firestore/model/Document$DocumentState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/firestore/model/Document$DocumentState;

    return-object p0
.end method

.method public static values()[Lcom/google/firebase/firestore/model/Document$DocumentState;
    .locals 1

    .line 36
    sget-object v0, Lcom/google/firebase/firestore/model/Document$DocumentState;->$VALUES:[Lcom/google/firebase/firestore/model/Document$DocumentState;

    invoke-virtual {v0}, [Lcom/google/firebase/firestore/model/Document$DocumentState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/firestore/model/Document$DocumentState;

    return-object v0
.end method
