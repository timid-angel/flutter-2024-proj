import { Module } from '@nestjs/common';
import { ListenerService } from './listener.service';
import { ListenerController } from './listener.controller';
import { AuthModule } from 'src/auth/auth.module';
import { MongooseModule } from '@nestjs/mongoose';
import { AdminSchema } from 'src/auth/schema/admin.schema';
import { ListenerSchema } from 'src/auth/schema/listener.schema';

@Module({
  imports: [
    AuthModule,
    MongooseModule.forFeature([{ name: 'Admin', schema: AdminSchema }]),
    MongooseModule.forFeature([{ name: 'Listener', schema: ListenerSchema }]),
  ],
  controllers: [ListenerController],
  providers: [ListenerService],
})
export class ListenerModule { }
