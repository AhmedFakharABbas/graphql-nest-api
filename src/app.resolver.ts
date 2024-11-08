import { Args, Mutation, Query, Resolver } from '@nestjs/graphql';

@Resolver()
export class AppResolver {
  @Query(() => String)
  helloWorld(): string {
    return 'Hello from the code mood';
  }
  @Mutation(() => String)
  customHello(
    @Args('name', { type: () => String, nullable: true }) name?: string,
  ): string {
    return name ? `Hello, ${name}!` : 'Hello, World!';
  }
}
