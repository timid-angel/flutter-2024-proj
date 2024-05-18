import { Prop, Schema, SchemaFactory } from "@nestjs/mongoose";
import { Document } from "mongoose";

@Schema()
export class Listener extends Document {
    @Prop()
    name: string

    @Prop({ unique: [true, 'Email already exists'] })
    email: string

    @Prop()
    password: string
}

export const ListenerSchema = SchemaFactory.createForClass(Listener)