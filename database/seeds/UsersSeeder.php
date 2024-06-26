<?php

use Phinx\Seed\AbstractSeed;

class UsersSeeder extends AbstractSeed
{
    /**
     * Run Method.
     *
     * Write your database seeder using this method.
     *
     * More information on writing seeders is available here:
     * https://book.cakephp.org/phinx/0/en/seeding.html
     */
    public function run(): void
    {
        $this->execute("INSERT INTO `users` (`id`, `name`)
        VALUES
            (1, 'John Doe'),
            (2, 'James Doe'),
            (3, 'Jesse Doe')
        ");
    }
}
